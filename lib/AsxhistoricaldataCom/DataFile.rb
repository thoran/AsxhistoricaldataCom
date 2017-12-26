# AsxhistoricalDataCom/DataFle.rb
# AsxhistoricalDataCom::DataFle

# 20170425
# 0.1.0

require 'HTTP/get'
require 'nokogiri'

module AsxhistoricaldataCom
  class DataFile

    class << self

      def all(year = nil)
        urls(year).collect do |url|
          self.new(url).get
        end
      end

      def urls(year = nil)
        year = year.to_s
        return_data_file_urls = all_data_file_urls
        if year
          return_data_file_urls.select!{|url| url =~ /#{year}/}
        end
        return_data_file_urls
      end

      private

      def retrieve_urls(archive_page_url)
        response = HTTP.get(archive_page_url)
        parsed_response = Nokogiri::HTML(response.body)
        parsed_response.search('a').select{|e| e.attributes['href'].value =~ /\.zip/}.collect{|link| link.attributes['href'].value}
      end

      def all_data_file_urls
        urls_on_archive_page + urls_on_home_page
      end

      def urls_on_archive_page
        retrieve_urls('http://www.asxhistoricaldata.com/archive/')
      end

      def urls_on_home_page
        retrieve_urls('http://www.asxhistoricaldata.com/')
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
  data_file_urls = AsxhistoricaldataCom::DataFile.urls(2017)
  data_file_urls.each do |data_file_url|
    puts data_file_urls
  end
end
