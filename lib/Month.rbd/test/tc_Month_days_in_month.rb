# tc_Month_days_in_month

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Reversed arguments for Month.new.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_days_in_month < MiniTest::Unit::TestCase
  
  def test_days_in_month
    assert_equal 31, Month.new(2006, 1).days_in_month
    assert_equal 28, Month.new(2006, 2).days_in_month
    assert_equal 29, Month.new(2008, 2).days_in_month
    assert_equal 31, Month.new(2006, 3).days_in_month
    assert_equal 30, Month.new(2006, 4).days_in_month
    assert_equal 31, Month.new(2006, 5).days_in_month
    assert_equal 30, Month.new(2006, 6).days_in_month
    assert_equal 31, Month.new(2006, 7).days_in_month
    assert_equal 31, Month.new(2006, 8).days_in_month
    assert_equal 30, Month.new(2006, 9).days_in_month
    assert_equal 31, Month.new(2006, 10).days_in_month
    assert_equal 30, Month.new(2006, 11).days_in_month
    assert_equal 31, Month.new(2006, 12).days_in_month
  end
  
end
