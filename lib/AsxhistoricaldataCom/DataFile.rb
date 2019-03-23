# AsxhistoricaldataCom/DataFle.rb
# AsxhistoricaldataCom::DataFle

require 'Date/betweenQ'
require 'HTTP/get'
require 'nokogiri'
require 'Month.rbd/Month'

module AsxhistoricaldataCom
  class DataFile

    class << self

      def all(year: nil, month: nil)
        urls(year: year, month: month).collect do |url|
          self.new(url).get
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
          !url.scan(/(\d\d\d\d)([a-z]{3,4})-([a-z]{3,4})/).flatten.empty?
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
        start_year, finish_year = [url.scan(/(\d\d\d\d)-(\d\d\d\d)/).flatten.first.to_i, url.scan(/(\d\d\d\d)-(\d\d\d\d)/).flatten.last.to_i]
        if start_year && finish_year
          comparison_date = Date.new(year, 1, 1)
          start_date = Date.new(start_year, 1, 1)
          finish_date = Date.new(finish_year, 12, 31)
          return true if comparison_date.between?(start_date, finish_date)
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
            matching_year_and_month_weekly?(url: url, year: year, month: month)
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
        comparison_year, comparison_month_start, comparison_month_finish = url.scan(/(\d\d\d\d)([a-z]{3,4})-([a-z]{3,4})/).flatten
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

    end # class << self

    def initialize(url)
      @url = url
    end

    def get
      HTTP.get(@url).body
    end

  end
end
