# tc_Month_start_of_month

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_start_of_month < MiniTest::Unit::TestCase
  
  def test_start_of_month
    assert_equal Date.new(2006, 1, 1), Month.new(2006, 1).start_of_month
    assert_equal Date.new(2006, 2, 1), Month.new(2006, 2).start_of_month
    assert_equal Date.new(2008, 2, 1), Month.new(2008, 2).start_of_month
    assert_equal Date.new(2006, 3, 1), Month.new(2006, 3).start_of_month
    assert_equal Date.new(2006, 4, 1), Month.new(2006, 4).start_of_month
    assert_equal Date.new(2006, 5, 1), Month.new(2006, 5).start_of_month
    assert_equal Date.new(2006, 6, 1), Month.new(2006, 6).start_of_month
    assert_equal Date.new(2006, 7, 1), Month.new(2006, 7).start_of_month
    assert_equal Date.new(2006, 8, 1), Month.new(2006, 8).start_of_month
    assert_equal Date.new(2006, 9, 1), Month.new(2006, 9).start_of_month
    assert_equal Date.new(2006, 10, 1), Month.new(2006, 10).start_of_month
    assert_equal Date.new(2006, 11, 1), Month.new(2006, 11).start_of_month
    assert_equal Date.new(2006, 12, 1), Month.new(2006, 12).start_of_month
  end
  
end
