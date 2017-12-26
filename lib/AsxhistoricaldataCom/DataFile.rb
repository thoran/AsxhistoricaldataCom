# AsxhistoricaldataCom/DataFle.rb
# AsxhistoricaldataCom::DataFle

# 20170911, 14, 17, 27
# 0.4.0

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

      def retrieve_urls(url)
        response = HTTP.get(url)
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
                month_number = '%02d' % (Month::Constants::MONTH_NAMES_LONG.index(month) + 1).to_s
                url =~ /#{year}#{month_number}#{'%02d' % day}/
              end
            else
              if month =~ /\d/
                url =~ /#{Month.new(month.to_i).to_long}-#{year}/i ||
                url =~ /#{Month.new(month.to_i).to_long}#{year}/i ||
                url =~ /#{Month::Constants::MONTH_NAMES_LONG[month.to_i - 1]}-#{year}/i ||
                url =~ /#{Month::Constants::MONTH_NAMES_LONG[month.to_i - 1]}#{year}/i ||
                url =~ /#{year}-{Month.new(month.to_i).to_long}/i ||
                url =~ /#{year}{Month.new(month.to_i).to_long}/i ||
                url =~ /#{year}-#{Month::Constants::MONTH_NAMES_LONG[month.to_i - 1]}/i ||
                url =~ /#{year}#{Month::Constants::MONTH_NAMES_LONG[month.to_i - 1]}/i ||
                url =~ /#{year}-{month}/i ||
                url =~ /#{year}{month}/i ||
                url =~ /#{month}-{year}/i
                url =~ /#{month}{year}/i ||
                url =~ /#{year}-#{'%02d' % month}/i ||
                url =~ /#{'%02d' % month}-{year}/i
                url =~ /#{year}#{'%02d' % month}/i ||
                url =~ /#{'%02d' % month}{year}/i
              else
                month_number = '%02d' % (Month::Constants::MONTH_NAMES_LONG.index(month) + 1).to_s
                url =~ /#{Month::Constants::MONTH_NAMES_LONG.index(month) + 1}-#{year}/i ||
                url =~ /#{Month::Constants::MONTH_NAMES_LONG.index(month) + 1}#{year}/i ||
                url =~ /#{month_number}-#{year}/i ||
                url =~ /#{month_number}#{year}/i ||
                url =~ /#{year}-#{month_number}/i ||
                url =~ /#{year}#{month_number}/i ||
                url =~ /#{month.downcase}-#{year}/i ||
                url =~ /#{month.downcase}#{year}/i ||
                url =~ /#{year}-#{month.downcase}/i ||
                url =~ /#{year}#{month.downcase}/i
              end
            end
          else
            url =~ /#{year}/
          end
        end
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
