# tc_Month_date

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Reversed arguments for Month.new.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

if __FILE__ == $0
  require 'minitest/autorun'
  $LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
  require 'Month/Constants'
  require 'Month/initialize'
  require 'Month/date'
end

class TC_Month_date < MiniTest::Unit::TestCase
  
  def test_date
    assert_equal 3, Month.new(2011, 1).date('First', 'Monday')
    assert_equal 14, Month.new(2011, 2).date('Second', 'Monday')
    assert_equal 21, Month.new(2011, 3).date('Third', 'Monday')
    assert_equal 25, Month.new(2011, 4).date('Fourth', 'Monday')
    assert_equal 30, Month.new(2011, 5).date('Fifth', 'Monday')
    assert_equal 27, Month.new(2011, 6).date('Last', 'Monday')
    assert_equal 18, Month.new(2011, 7).date('Second Last', 'Monday')
    assert_equal 15, Month.new(2011, 8).date('Third Last', 'Monday')
    assert_equal 5, Month.new(2011, 9).date('Fourth Last', 'Monday')
    assert_equal 2, Month.new(2011, 1).date('First', 'Sunday')
    assert_equal 13, Month.new(2011, 2).date('Second', 'Sunday')
    assert_equal 20, Month.new(2011, 3).date('Third', 'Sunday')
    assert_equal 24, Month.new(2011, 4).date('Fourth', 'Sunday')
    assert_equal 29, Month.new(2011, 5).date('Fifth', 'Sunday')
    assert_equal 26, Month.new(2011, 6).date('Last', 'Sunday')
    assert_equal 24, Month.new(2011, 7).date('Second Last', 'Sunday')
    assert_equal 14, Month.new(2011, 8).date('Third Last', 'Sunday')
    assert_equal 4, Month.new(2011, 9).date('Fourth Last', 'Sunday')
  end
  
end
