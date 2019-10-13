# AsxhistoricaldataCom.rb
# AsxhistoricaldataCom

# 20190922
# 0.9.0

# Changes since 0.8:
# 1. + attr_accessor :url
# 2. ~ DataFile.all, so that it no longer retrieves the files automatically.
# 3. + DataFile.retrieve_all, which retrieves the files automatically and returns an array of instances, rather than an array of zip file contents.

lib_dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'AsxhistoricaldataCom/DataFile'
