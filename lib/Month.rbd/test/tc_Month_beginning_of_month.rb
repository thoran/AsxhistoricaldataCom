# tc_Month_beginning_of_month

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Reversed arguments for Month.new.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_beginning_of_month < MiniTest::Unit::TestCase
  
  def test_beginning_of_month
    assert_equal Date.new(2006, 1, 1), Month.new(2006, 1).beginning_of_month
    assert_equal Date.new(2006, 2, 1), Month.new(2006, 2).beginning_of_month
    assert_equal Date.new(2008, 2, 1), Month.new(2008, 2).beginning_of_month
    assert_equal Date.new(2006, 3, 1), Month.new(2006, 3).beginning_of_month
    assert_equal Date.new(2006, 4, 1), Month.new(2006, 4).beginning_of_month
    assert_equal Date.new(2006, 5, 1), Month.new(2006, 5).beginning_of_month
    assert_equal Date.new(2006, 6, 1), Month.new(2006, 6).beginning_of_month
    assert_equal Date.new(2006, 7, 1), Month.new(2006, 7).beginning_of_month
    assert_equal Date.new(2006, 8, 1), Month.new(2006, 8).beginning_of_month
    assert_equal Date.new(2006, 9, 1), Month.new(2006, 9).beginning_of_month
    assert_equal Date.new(2006, 10, 1), Month.new(2006, 10).beginning_of_month
    assert_equal Date.new(2006, 11, 1), Month.new(2006, 11).beginning_of_month
    assert_equal Date.new(2006, 12, 1), Month.new(2006, 12).beginning_of_month
  end
  
end
