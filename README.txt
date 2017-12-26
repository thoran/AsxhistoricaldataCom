A parser for the website, http://asxhistoricaldata.com, to enable automated downloading of data zip files.

The list of URLs on the archive page...  

> url = 'http://www.asxhistoricaldata.com/'
> response = HTTP.get(url)
> parsed_response = Nokogiri::HTML(response.body)
> parsed_response.search('a').select{|e| e.attributes['href'].value =~ /\.zip/}.collect{|link| link.attributes['href'].value}.each{|e| puts e}
...

> url = 'http://www.asxhistoricaldata.com/archive/'
> response = HTTP.get(url)
> parsed_response = Nokogiri::HTML(response.body)
> parsed_response.search('a').select{|e| e.attributes['href'].value =~ /\.zip/}.collect{|link| link.attributes['href'].value}.each{|e| puts e}
http://www.asxhistoricaldata.com/wp-content/uploads/march-2017.zip
http://www.asxhistoricaldata.com/wp-content/uploads/february-2017.zip
http://www.asxhistoricaldata.com/wp-content/uploads/january-2017.zip
http://www.asxhistoricaldata.com/wp-content/uploads/december-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/november-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/october-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/September-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/August-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/July-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/June-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/May-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/April-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/March-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/February-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/January-2016.zip
http://www.asxhistoricaldata.com/wp-content/uploads/December-2015.zip
http://www.asxhistoricaldata.com/wp-content/uploads/November-2015.zip
http://www.asxhistoricaldata.com/wp-content/uploads/October-2015.zip
http://www.asxhistoricaldata.com/wp-content/uploads/September-2015.zip
http://www.asxhistoricaldata.com/wp-content/uploads/August-2015.zip
http://www.asxhistoricaldata.com/wp-content/uploads/July-2015.zip
http://www.asxhistoricaldata.com/wp-content/uploads/June-2015.zip
http://www.asxhistoricaldata.com/wp-content/uploads/May-2015.zip
http://www.asxhistoricaldata.com/wp-content/uploads/April-2015.zip
http://www.asxhistoricaldata.com/wp-content/uploads/March-2015.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2015-February.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2015-January.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2014.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2013.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2012.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2011.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2010.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2009.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2007-2008.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2005-2006.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2003-2004.zip
http://www.asxhistoricaldata.com/wp-content/uploads/2000-2002.zip
http://www.asxhistoricaldata.com/wp-content/uploads/1997-1999.zip
