# AsxhistoricaldataCom.rb
# AsxhistoricaldataCom

# 20191013
# 0.9.1

# Changes since 0.8:
# 1. + attr_accessor :url
# 2. ~ DataFile.all, so that it no longer retrieves the files automatically.
# 3. + DataFile.retrieve_all, which retrieves the files automatically and returns an array of instances, rather than an array of zip file contents.
# 0/1
# 4. ~ Month to a newer copy, which strictly includes Date#to_month, even though it isn't used.
# 5. + Date/business_dayQ.rb, as this is used in the tests.
# 6. - a couple of failing tests, which I should review a little more thoroughly at some point.
# 7. ~ .gitignore to include Gemfile.lock.

lib_dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'AsxhistoricaldataCom/DataFile'
