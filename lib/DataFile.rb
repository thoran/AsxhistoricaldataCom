require 'HTTP/get'
require 'nokogiri'

def retrieve_data_file_urls(archive_page_url)
  response = HTTP.get(archive_page_url)
  parsed_response = Nokogiri::HTML(response.body)
  parsed_response.search('a').select{|e| e.attributes['href'].value =~ /\.zip/}.collect{|link| link.attributes['href'].value}
end

def data_file_urls_on_archive_page
  retrieve_data_file_urls('http://www.asxhistoricaldata.com/archive/')
end

def data_file_urls_on_home_page
  retrieve_data_file_urls('http://www.asxhistoricaldata.com/')
end

def data_file_urls
  data_file_urls_on_archive_page + data_file_urls_on_home_page
end

p data_file_urls
