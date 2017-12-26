# AsxhistoricalDataCom/DataFle.rb
# AsxhistoricalDataCom::DataFle

# 20170425
# 0.2.0

require 'HTTP/get'
require 'nokogiri'
require 'Month.rbd/Month'

module AsxhistoricaldataCom
  class DataFile

    class << self

      def all(year: nil, month: nil, day: nil)
        urls(year: year, month: month, day: day).collect do |url|
          self.new(url).get
        end
      end

      def urls(year: nil, month: nil, day: nil)
        return_urls = all_urls
        if year || month
          return_urls = (
            return_urls.select do |url|
              matching_url?(url: url, year: year, month: month, day: day)
            end
          )
        end
        return_urls
      end

      private

      def retrieve_urls(archive_page_url)
        response = HTTP.get(archive_page_url)
        parsed_response = Nokogiri::HTML(response.body)
        parsed_response.search('a').select{|e| e.attributes['href'].value =~ /\.zip/}.collect{|link| link.attributes['href'].value}
      end

      def all_urls
        urls_on_archive_page + urls_on_home_page
      end

      def urls_on_archive_page
        retrieve_urls('http://www.asxhistoricaldata.com/archive/').uniq
      end

      def urls_on_home_page
        retrieve_urls('http://www.asxhistoricaldata.com/').uniq
      end

      def matching_url?(url:, year: nil, month: nil, day: nil)
        if year
          year = year.to_s
          if month
            month = month.to_s
            if day
              if month =~ /\d/
                url =~ /#{year}#{'%02d' % month}#{'%02d' % day}/
              else
                month_number = '%02d' % (Month::Constants::MONTH_NAMES_LONG.index(month).to_i + 1).to_s
                url =~ /#{year}#{month_number}#{'%02d' % day}/
              end
            else
              if month =~ /\d/
                url =~ /#{Month.new(month.to_i).to_long}-#{year}/i || url =~ /#{year}-#{Month::Constants::MONTH_NAMES_LONG[month.to_i - 1]}/i
              else
                url =~ /#{month.downcase}-#{year}/ || url =~ /#{year}-#{month.downcase}/
              end
            end
          else
            url =~ /#{year}/
          end
        end
      end

    end # class << self

    def initialize(data_file_url)
      @data_file_url = data_file_url
    end

    def get
      HTTP.get(@data_file_url)
    end

  end
end

if __FILE__ == $0
  data_file_urls = AsxhistoricaldataCom::DataFile.urls(year: 2017)
  data_file_urls.each do |data_file_url|
    puts data_file_url
  end
  puts
  data_file_urls = AsxhistoricaldataCom::DataFile.urls(year: 2017, month: 1)
  data_file_urls.each do |data_file_url|
    puts data_file_url
  end
  puts
  data_file_urls = AsxhistoricaldataCom::DataFile.urls(year: 2017, month: 'January')
  data_file_urls.each do |data_file_url|
    puts data_file_url
  end
  puts
  data_file_urls = AsxhistoricaldataCom::DataFile.urls(year: 2017, month: 4, day: 7)
  data_file_urls.each do |data_file_url|
    puts data_file_url
  end
  puts
  data_file_urls = AsxhistoricaldataCom::DataFile.urls(year: 2017, month: 'April', day: 7)
  data_file_urls.each do |data_file_url|
    puts data_file_url
  end
  # data_files = AsxhistoricaldataCom::DataFile.all
  # require 'SimpleCSV.rbd/SimpleCSV'
end
