# AsxhistoricaldataCom/DataFle.rb
# AsxhistoricaldataCom::DataFle

require 'Date/betweenQ'
require 'File/self.basename_without_extname'
require 'HTTP/get'
require 'Month'
require 'nokogiri'
require 'fileutils'
require 'zip'

module AsxhistoricaldataCom
  class DataFile

    class << self

      def write_decompressed(path, year: nil, month: nil)
        FileUtils.mkdir_p(path) unless File.exist?(path)
        all(year: year, month: month).each do |data_file|
          Zip::File.open_buffer(data_file.get) do |zip_file|
            zip_file.each do |entry|
              next if entry.ftype == :directory || File.basename(entry.name) == '.DS_Store'
              unzipped_filename = "#{path}/#{File.basename_without_extname(entry.name)}.csv"
              next if File.exist?(unzipped_filename)
              entry.extract(unzipped_filename)
            end
          end
        end
      end
      alias_method :write_all_decompressed, :write_decompressed # Just call with no arguments.

      def write(path, year: nil, month: nil)
        FileUtils.mkdir_p(path) unless File.exist?(path)
        all(year: year, month: month).each do |data_file|
          File.write("#{path}/#{File.basename(data_file.url)}", data_file.get)
        end
      end
      alias_method :write_all, :write # Just call with no arguments.

      def retrieve_decompressed(year: nil, month: nil)
        all(year: year, month: month).collect do |data_file|
          Zip::File.open_buffer(data_file.get) do |zip_file|
            zip_file.each do |entry|
              next if entry.ftype == :directory || File.basename(entry.name) == '.DS_Store'
              entry.get_input_stream.read
            end
          end
        end
      end
      alias_method :retrieve_all_decompressed, :retrieve_decompressed # Just call with no arguments.

      def retrieve(year: nil, month: nil)
        all(year: year, month: month).collect do |data_file|
          data_file.get
          data_file
        end
      end
      alias_method :retrieve_all, :retrieve # Just call with no arguments.

      def all(year: nil, month: nil)
        urls(year: year, month: month).collect do |url|
          self.new(url)
        end
      end

      def urls(year: nil, month: nil)
        return_urls = all_urls
        if year || month
          return_urls = (
            return_urls.select do |url|
              matching_url?(url: url, year: year, month: month)
            end
          )
        end
        return_urls
      end

      private

      def retrieve_urls(url)
        response = HTTP.get(url)
        parsed_response = Nokogiri::HTML(response.body)
        parsed_response.search('a').select{|e| e.attributes['href'].value =~ /\.zip/}.collect{|link| link.attributes['href'].value}
      end

      def all_urls
        urls_on_archive_page + urls_on_home_page
      end

      def urls_on_archive_page
        retrieve_urls('https://www.asxhistoricaldata.com/archive/').uniq
      end

      def urls_on_home_page
        retrieve_urls('https://www.asxhistoricaldata.com/').uniq
      end

      def multi_year_zip_files
        all_urls.select do |url|
          !url.scan(/(\d\d\d\d)-(\d\d\d\d)/).flatten.empty?
        end
      end

      def multi_month_zip_files
        all_urls.select do |url|
          !url.scan(/(\d\d\d\d)([a-z]+)-([a-z]+)/).flatten.empty?
        end
      end

      def single_month_zip_files
        all_urls.select do |url|
          !url.scan(/(\d\d\d\d)([a-z]+)(\.+)/).flatten.empty?
        end
      end

      def weekly_zip_files
        all_urls.select do |url|
          !url.scan(/week(\d\d\d\d)(\d\d)/).flatten.empty?
        end
      end

      def matching_url?(url:, year: nil, month: nil)
        if year
          if month
            matching_year_and_month?(url: url, year: year, month: month)
          else
            matching_year?(url: url, year: year)
          end
        else
          true
        end
      end

      def matching_year?(url:, year:)
        scan_result = url.scan(/(\d\d\d\d)-(\d\d\d\d)/)
        if !scan_result.flatten.first.nil? && !scan_result.flatten.last.nil?
          start_year, finish_year = [url.scan(/(\d\d\d\d)-(\d\d\d\d)/).flatten.first.to_i, url.scan(/(\d\d\d\d)-(\d\d\d\d)/).flatten.last.to_i]
          if start_year && finish_year
            comparison_date = Date.new(year, 1, 1)
            start_date = Date.new(start_year, 1, 1)
            finish_date = Date.new(finish_year, 12, 31)
            return true if comparison_date.between?(start_date, finish_date)
          end
        end
        if comparison_year = url.scan(/(\d\d\d\d)([a-z]{3,4})/).flatten.first
          return true if comparison_year.to_i == year.to_i
        end
        if comparison_year = url.scan(/(\d\d\d\d)([a-z]{3,4})-([a-z]{3,4})/).flatten.first
          return true if comparison_year.to_i == year.to_i
        end
        if comparison_year = url.scan(/week(\d\d\d\d)(\d\d)/).flatten.first
          return true if comparison_year.to_i == year.to_i
        end
        false
      end

      def matching_year_and_month?(url:, year:, month:)
        if month.to_s.match(/\D/)
          month = Month::Constants::MONTH_NAMES_LONG.collect{|m| m.downcase}.index(month.downcase)&.+(1) ||
            Month::Constants::MONTH_NAMES_SHORT.collect{|m| m.downcase}.index(month.downcase)&.+(1)
        end
        matching_year_and_month_multi_year?(url: url, year: year, month: month) ||
          matching_year_and_month_multi_month?(url: url, year: year, month: month) ||
            matching_year_and_month_weekly?(url: url, year: year, month: month) ||
              matching_year_and_single_month?(url: url, year: year, month: month)
      end

      def matching_year_and_month_multi_year?(url:, year:, month:)
        if month.to_s.match(/\D/)
          month = Month::Constants::MONTH_NAMES_LONG.collect{|m| m.downcase}.index(month.downcase)&.+(1) ||
            Month::Constants::MONTH_NAMES_SHORT.collect{|m| m.downcase}.index(month.downcase)&.+(1)
        end
        start_year, finish_year = [url.scan(/(\d\d\d\d)-(\d\d\d\d)/).flatten.first.to_i, url.scan(/(\d\d\d\d)-(\d\d\d\d)/).flatten.last.to_i]
        if start_year && finish_year
          comparison_date = Date.new(year, month, 1)
          start_date = Date.new(start_year, 1, 1)
          finish_date = Date.new(finish_year, 12, 31)
          return true if comparison_date.between?(start_date, finish_date)
        end
        false
      end

      def matching_year_and_month_multi_month?(url:, year:, month:)
        comparison_year, comparison_month_start, comparison_month_finish = url.scan(/(\d\d\d\d)([a-z]+)-([a-z]+)/).flatten
        if comparison_year && comparison_month_start && comparison_month_finish
          comparison_year = comparison_year.to_i
          return false unless comparison_year == year
          comparison_date = Date.new(year, month, 1)
          start_month = Month::Constants::MONTH_NAMES_LONG.collect{|m| m.downcase}.index(comparison_month_start.downcase)&.+(1) ||
            Month::Constants::MONTH_NAMES_SHORT.collect{|m| m.downcase}.index(comparison_month_start.downcase)&.+(1)
          finish_month = Month::Constants::MONTH_NAMES_LONG.collect{|m| m.downcase}.index(comparison_month_finish.downcase)&.+(1) ||
            Month::Constants::MONTH_NAMES_SHORT.collect{|m| m.downcase}.index(comparison_month_finish.downcase)&.+(1)
          start_date = Date.new(year, start_month, 1)
          finish_date = Date.new(year, finish_month, Month.new(finish_month).days)
          return true if comparison_date.between?(start_date, finish_date)
        end
        false
      end

      def matching_year_and_month_weekly?(url:, year:, month:)
        comparison_year, comparison_month = url.scan(/week(\d\d\d\d)(\d\d)/).flatten
        if comparison_year && comparison_month
          comparison_year = comparison_year.to_i
          comparison_month = comparison_month.to_i
          return true if comparison_year == year && comparison_month == month
        end
        false
      end

      def matching_year_and_single_month?(url:, year:, month:)
        comparison_year, comparison_month = url.scan(/(\d\d\d\d)([a-z]+)/).flatten
        if comparison_year && comparison_month
          comparison_year = comparison_year.to_i
          comparison_month = Month::Constants::MONTH_NAMES_LONG.collect{|m| m.downcase}.index(comparison_month.downcase)&.+(1) ||
            Month::Constants::MONTH_NAMES_SHORT.collect{|m| m.downcase}.index(comparison_month.downcase)&.+(1)
          return true if comparison_year == year && comparison_month == month
        end
        false
      end

    end # class << self

    attr_accessor :url

    def initialize(url)
      @url = url
    end

    def get
      @data ||= HTTP.get(@url).body
    end

  end
end
