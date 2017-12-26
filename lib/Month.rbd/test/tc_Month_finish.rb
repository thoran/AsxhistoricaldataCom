# tc_Month_finish

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_finish < MiniTest::Unit::TestCase
  
  def test_finish
    assert_equal Date.new(2006, 1, 31), Month.new(2006, 1).finish
    assert_equal Date.new(2006, 2, 28), Month.new(2006, 2).finish
    assert_equal Date.new(2008, 2, 29), Month.new(2008, 2).finish
    assert_equal Date.new(2006, 3, 31), Month.new(2006, 3).finish
    assert_equal Date.new(2006, 4, 30), Month.new(2006, 4).finish
    assert_equal Date.new(2006, 5, 31), Month.new(2006, 5).finish
    assert_equal Date.new(2006, 6, 30), Month.new(2006, 6).finish
    assert_equal Date.new(2006, 7, 31), Month.new(2006, 7).finish
    assert_equal Date.new(2006, 8, 31), Month.new(2006, 8).finish
    assert_equal Date.new(2006, 9, 30), Month.new(2006, 9).finish
    assert_equal Date.new(2006, 10, 31), Month.new(2006, 10).finish
    assert_equal Date.new(2006, 11, 30), Month.new(2006, 11).finish
    assert_equal Date.new(2006, 12, 31), Month.new(2006, 12).finish
  end
  
end
