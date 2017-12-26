# tc_Month_self.finish

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_finish < MiniTest::Unit::TestCase
  
  def test_self_finish
    assert_equal Date.new(2006, 1, 31), Month.finish(2006, 1)
    assert_equal Date.new(2006, 2, 28), Month.finish(2006, 2)
    assert_equal Date.new(2008, 2, 29), Month.finish(2008, 2)
    assert_equal Date.new(2006, 3, 31), Month.finish(2006, 3)
    assert_equal Date.new(2006, 4, 30), Month.finish(2006, 4)
    assert_equal Date.new(2006, 5, 31), Month.finish(2006, 5)
    assert_equal Date.new(2006, 6, 30), Month.finish(2006, 6)
    assert_equal Date.new(2006, 7, 31), Month.finish(2006, 7)
    assert_equal Date.new(2006, 8, 31), Month.finish(2006, 8)
    assert_equal Date.new(2006, 9, 30), Month.finish(2006, 9)
    assert_equal Date.new(2006, 10, 31), Month.finish(2006, 10)
    assert_equal Date.new(2006, 11, 30), Month.finish(2006, 11)
    assert_equal Date.new(2006, 12, 31), Month.finish(2006, 12)
  end
  
end
