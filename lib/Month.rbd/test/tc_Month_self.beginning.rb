# tc_Month_self.beginning

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_beginning < MiniTest::Unit::TestCase
  
  def test_no_arguments
    this_year, this_month = Date.today.year, Date.today.month
    assert_equal Date.new(this_year, this_month, 1), Month.beginning
  end
  
  def test_one_argument
    this_year = Date.today.year
    assert_equal Date.new(this_year, 1, 1), Month.beginning(1)
    assert_equal Date.new(this_year, 2, 1), Month.beginning(2)
    assert_equal Date.new(this_year, 3, 1), Month.beginning(3)
    assert_equal Date.new(this_year, 4, 1), Month.beginning(4)
    assert_equal Date.new(this_year, 5, 1), Month.beginning(5)
    assert_equal Date.new(this_year, 6, 1), Month.beginning(6)
    assert_equal Date.new(this_year, 7, 1), Month.beginning(7)
    assert_equal Date.new(this_year, 8, 1), Month.beginning(8)
    assert_equal Date.new(this_year, 9, 1), Month.beginning(9)
    assert_equal Date.new(this_year, 10, 1), Month.beginning(10)
    assert_equal Date.new(this_year, 11, 1), Month.beginning(11)
    assert_equal Date.new(this_year, 12, 1), Month.beginning(12)
  end
  
  def test_two_arguments
    assert_equal Date.new(2006, 1, 1), Month.beginning(2006, 1)
    assert_equal Date.new(2006, 2, 1), Month.beginning(2006, 2)
    assert_equal Date.new(2008, 2, 1), Month.beginning(2008, 2)
    assert_equal Date.new(2006, 3, 1), Month.beginning(2006, 3)
    assert_equal Date.new(2006, 4, 1), Month.beginning(2006, 4)
    assert_equal Date.new(2006, 5, 1), Month.beginning(2006, 5)
    assert_equal Date.new(2006, 6, 1), Month.beginning(2006, 6)
    assert_equal Date.new(2006, 7, 1), Month.beginning(2006, 7)
    assert_equal Date.new(2006, 8, 1), Month.beginning(2006, 8)
    assert_equal Date.new(2006, 9, 1), Month.beginning(2006, 9)
    assert_equal Date.new(2006, 10, 1), Month.beginning(2006, 10)
    assert_equal Date.new(2006, 11, 1), Month.beginning(2006, 11)
    assert_equal Date.new(2006, 12, 1), Month.beginning(2006, 12)
  end
  
  def test_three_arguments
    assert_raises(ArgumentError){Month.beginning(1, 2, 3)}
  end
  
end
