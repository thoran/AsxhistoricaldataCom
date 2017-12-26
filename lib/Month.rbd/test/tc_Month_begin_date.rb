# tc_Month_begin_date

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Reversed arguments for Month.new.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_begin_date < MiniTest::Unit::TestCase
  
  def test_begin_date
    assert_equal Date.new(2006, 1, 1), Month.new(2006, 1).begin_date
    assert_equal Date.new(2006, 2, 1), Month.new(2006, 2).begin_date
    assert_equal Date.new(2008, 2, 1), Month.new(2008, 2).begin_date
    assert_equal Date.new(2006, 3, 1), Month.new(2006, 3).begin_date
    assert_equal Date.new(2006, 4, 1), Month.new(2006, 4).begin_date
    assert_equal Date.new(2006, 5, 1), Month.new(2006, 5).begin_date
    assert_equal Date.new(2006, 6, 1), Month.new(2006, 6).begin_date
    assert_equal Date.new(2006, 7, 1), Month.new(2006, 7).begin_date
    assert_equal Date.new(2006, 8, 1), Month.new(2006, 8).begin_date
    assert_equal Date.new(2006, 9, 1), Month.new(2006, 9).begin_date
    assert_equal Date.new(2006, 10, 1), Month.new(2006, 10).begin_date
    assert_equal Date.new(2006, 11, 1), Month.new(2006, 11).begin_date
    assert_equal Date.new(2006, 12, 1), Month.new(2006, 12).begin_date
  end
  
end
