# tc_Month_to_date

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_to_date < MiniTest::Unit::TestCase
  
  def test_plus
    assert_equal Date.new(2010, 12, 1).year, Month.new(2010, 12).to_date.year
    assert_equal Date.new(2010, 12, 1).month, Month.new(2010, 12).to_date.month
    assert_equal Date.new(2010, 12, 1).day, Month.new(2010, 12).to_date.day
    assert_equal Date.new(2011, 11, 1).year, Month.new(2011, 11).to_date.year
    assert_equal Date.new(2011, 11, 1).month, Month.new(2011, 11).to_date.month
    assert_equal Date.new(2011, 11, 1).day, Month.new(2011, 11).to_date.day
    assert_equal Date.new(2011, 10, 1).year, Month.new(2011, 10).to_date.year
    assert_equal Date.new(2011, 10, 1).month, Month.new(2011, 10).to_date.month
    assert_equal Date.new(2011, 10, 1).day, Month.new(2011, 10).to_date.day
  end
  
end
