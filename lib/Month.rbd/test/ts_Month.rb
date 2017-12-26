# ts_Month

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..')))

require 'Month'
require 'minitest/autorun'
tests = Dir["**/*.rb"].reject!{|file| file == File.basename(__FILE__)}
tests.each{|test| require test}
