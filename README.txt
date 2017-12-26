A parser for the website, http://asxhistoricaldata.com, to enable automated downloading of zipped data files.

List the data file URLs on the home page...

> require 'AsxhistoricaldataCom'
> AsxhistoricaldataCom::DataFile.send(:urls_on_home_page)
=> ["https://www.asxhistoricaldata.com/data/week20171208.zip", ... , "https://www.asxhistoricaldata.com/data/week20170707.zip"]

List the data file URLs on the archive page...

> require 'AsxhistoricaldataCom'
> AsxhistoricaldataCom::DataFile.send(:urls_on_archive_page)
=> ["https://www.asxhistoricaldata.com/data/2017jan-june.zip", "https://www.asxhistoricaldata.com/data/1997-2006.zip", "https://www.asxhistoricaldata.com/data/2007-2012.zip", "https://www.asxhistoricaldata.com/data/2013-2016.zip"]

Retrieve all data files...

> require 'AsxhistoricaldataCom'
> data_files = AsxhistoricaldataCom::DataFile.all
=> [#<AsxhistoricaldataCom::DataFile @url=...>]
> data_files.first.get
=> "<!DOCTYPE html>...</html>"

Retrieve data files matching a year...

> require 'AsxhistoricaldataCom'
> data_files = AsxhistoricaldataCom::DataFile.all(year: 2010)
=> [#<AsxhistoricaldataCom::DataFile @url="https://www.asxhistoricaldata.com/data/2007-2012.zip">]
> data_files.first.get
=> "<!DOCTYPE html>...</html>"

Retrieve data files matching a year and numeric month...

> require 'AsxhistoricaldataCom'
> data_files = AsxhistoricaldataCom::DataFile.all(year: 2017, month: 11)
=> [#<AsxhistoricaldataCom::DataFile @url="https://www.asxhistoricaldata.com/data/week201711**.zip">, ..., #<AsxhistoricaldataCom::DataFile @url="https://www.asxhistoricaldata.com/data/week201711**.zip">]
> data_files.first.get
=> "<!DOCTYPE html>...</html>"

Retrieve data files matching a year and long month...

> require 'AsxhistoricaldataCom'
> data_files = AsxhistoricaldataCom::DataFile.all(year: 2017, month: 'November')
=> [#<AsxhistoricaldataCom::DataFile @url="https://www.asxhistoricaldata.com/data/week201711**.zip">, ..., #<AsxhistoricaldataCom::DataFile @url="https://www.asxhistoricaldata.com/data/week201711**.zip">]
> data_files.first.get
=> "<!DOCTYPE html>...</html>"
