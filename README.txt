A parser for the website, http://asxhistoricaldata.com, to enable automated downloading of data zip files.

The list of URLs on the front page...

> require 'AsxhistoricaldataCom'
> AsxhistoricaldataCom::DataFile.send(:urls_on_home_page)
=> ["https://www.asxhistoricaldata.com/data/week20171208.zip", "https://www.asxhistoricaldata.com/data/week20171201.zip", "https://www.asxhistoricaldata.com/data/week20171124.zip", "https://www.asxhistoricaldata.com/data/week20171117.zip", "https://www.asxhistoricaldata.com/data/week20171110.zip", "https://www.asxhistoricaldata.com/data/week20171103.zip", "https://www.asxhistoricaldata.com/data/week20171027.zip", "https://www.asxhistoricaldata.com/data/week20171020.zip", "https://www.asxhistoricaldata.com/data/week20171013.zip", "https://www.asxhistoricaldata.com/data/week20171006.zip", "https://www.asxhistoricaldata.com/data/week20170929.zip", "https://www.asxhistoricaldata.com/data/week20170922.zip", "https://www.asxhistoricaldata.com/data/week20170915.zip", "https://www.asxhistoricaldata.com/data/week20170908.zip", "https://www.asxhistoricaldata.com/data/week20170901.zip", "https://www.asxhistoricaldata.com/data/week20170825.zip", "https://www.asxhistoricaldata.com/data/week20170818.zip", "https://www.asxhistoricaldata.com/data/week20170811.zip", "https://www.asxhistoricaldata.com/data/week20170804.zip", "https://www.asxhistoricaldata.com/data/week20170728.zip", "https://www.asxhistoricaldata.com/data/week20170721.zip", "https://www.asxhistoricaldata.com/data/week20170714.zip", "https://www.asxhistoricaldata.com/data/week20170707.zip"]

The list of URLs on the archive page...

> require 'AsxhistoricaldataCom'
> AsxhistoricaldataCom::DataFile.send(:urls_on_archive_page)

=> ["https://www.asxhistoricaldata.com/data/2017jan-june.zip", "https://www.asxhistoricaldata.com/data/1997-2006.zip", "https://www.asxhistoricaldata.com/data/2007-2012.zip", "https://www.asxhistoricaldata.com/data/2013-2016.zip"]
