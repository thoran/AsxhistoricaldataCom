# tc_Month_self.date

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

if __FILE__ == $0
  require 'minitest/autorun'
  $LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
  require 'Month/Constants'
  require 'Month/self.date'
end

class TC_Month_self_date < MiniTest::Unit::TestCase
  
  def test_self_date
    assert_equal 3, Month.date('First', 'Monday', 2011, 1)
    assert_equal 14, Month.date('Second', 'Monday', 2011, 2)
    assert_equal 21, Month.date('Third', 'Monday', 2011, 3)
    assert_equal 25, Month.date('Fourth', 'Monday', 2011, 4)
    assert_equal 30, Month.date('Fifth', 'Monday', 2011, 5)
    assert_equal 27, Month.date('Last', 'Monday', 2011, 6)
    assert_equal 18, Month.date('Second Last', 'Monday', 2011, 7)
    assert_equal 15, Month.date('Third Last', 'Monday', 2011, 8)
    assert_equal 5, Month.date('Fourth Last', 'Monday', 2011, 9)
    assert_equal 2, Month.date('First', 'Sunday', 2011, 1)
    assert_equal 13, Month.date('Second', 'Sunday', 2011, 2)
    assert_equal 20, Month.date('Third', 'Sunday', 2011, 3)
    assert_equal 24, Month.date('Fourth', 'Sunday', 2011, 4)
    assert_equal 29, Month.date('Fifth', 'Sunday', 2011, 5)
    assert_equal 26, Month.date('Last', 'Sunday', 2011, 6)
    assert_equal 24, Month.date('Second Last', 'Sunday', 2011, 7)
    assert_equal 14, Month.date('Third Last', 'Sunday', 2011, 8)
    assert_equal 4, Month.date('Fourth Last', 'Sunday', 2011, 9)
  end
  
end
