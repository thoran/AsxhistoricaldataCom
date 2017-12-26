# tc_Month_end

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Reversed arguments for Month.new.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_end < MiniTest::Unit::TestCase
  
  def test_end
    assert_equal Date.new(2006, 1, 31), Month.new(2006, 1).end
    assert_equal Date.new(2006, 2, 28), Month.new(2006, 2).end
    assert_equal Date.new(2008, 2, 29), Month.new(2008, 2).end
    assert_equal Date.new(2006, 3, 31), Month.new(2006, 3).end
    assert_equal Date.new(2006, 4, 30), Month.new(2006, 4).end
    assert_equal Date.new(2006, 5, 31), Month.new(2006, 5).end
    assert_equal Date.new(2006, 6, 30), Month.new(2006, 6).end
    assert_equal Date.new(2006, 7, 31), Month.new(2006, 7).end
    assert_equal Date.new(2006, 8, 31), Month.new(2006, 8).end
    assert_equal Date.new(2006, 9, 30), Month.new(2006, 9).end
    assert_equal Date.new(2006, 10, 31), Month.new(2006, 10).end
    assert_equal Date.new(2006, 11, 30), Month.new(2006, 11).end
    assert_equal Date.new(2006, 12, 31), Month.new(2006, 12).end
  end
  
end
