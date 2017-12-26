# tc_Month_cdate

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
  require 'Month/cdate'
end

class TC_Month_cdate < MiniTest::Unit::TestCase
  
  def test_cdate
    assert_equal 3, Month.new(2011, 1).cdate('First', 'Monday')
    assert_equal 14, Month.new(2011, 2).cdate('Second', 'Monday')
    assert_equal 21, Month.new(2011, 3).cdate('Third', 'Monday')
    assert_equal 25, Month.new(2011, 4).cdate('Fourth', 'Monday')
    assert_equal 30, Month.new(2011, 5).cdate('Fifth', 'Monday')
    assert_equal 27, Month.new(2011, 6).cdate('Last', 'Monday')
    assert_equal 18, Month.new(2011, 7).cdate('Second Last', 'Monday')
    assert_equal 15, Month.new(2011, 8).cdate('Third Last', 'Monday')
    assert_equal 5, Month.new(2011, 9).cdate('Fourth Last', 'Monday')
    assert_equal 2, Month.new(2011, 1).cdate('First', 'Sunday')
    assert_equal 13, Month.new(2011, 2).cdate('Second', 'Sunday')
    assert_equal 20, Month.new(2011, 3).cdate('Third', 'Sunday')
    assert_equal 24, Month.new(2011, 4).cdate('Fourth', 'Sunday')
    assert_equal 29, Month.new(2011, 5).cdate('Fifth', 'Sunday')
    assert_equal 26, Month.new(2011, 6).cdate('Last', 'Sunday')
    assert_equal 24, Month.new(2011, 7).cdate('Second Last', 'Sunday')
    assert_equal 14, Month.new(2011, 8).cdate('Third Last', 'Sunday')
    assert_equal 4, Month.new(2011, 9).cdate('Fourth Last', 'Sunday')
  end
  
end
