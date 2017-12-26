# tc_Month_self.last_month

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_last_month < MiniTest::Unit::TestCase
  
  def test_self_last_month
    today = Date.today
    case today.month
    when 1; assert_equal Month.new(today.year - 1, 12).month, Month.last_month.month
    when 2; assert_equal Month.new(1).month, Month.last_month.month
    when 3; assert_equal Month.new(2).month, Month.last_month.month
    when 4; assert_equal Month.new(3).month, Month.last_month.month
    when 5; assert_equal Month.new(4).month, Month.last_month.month
    when 6; assert_equal Month.new(5).month, Month.last_month.month
    when 7; assert_equal Month.new(6).month, Month.last_month.month
    when 8; assert_equal Month.new(7).month, Month.last_month.month
    when 9; assert_equal Month.new(8).month, Month.last_month.month
    when 10; assert_equal Month.new(9).month, Month.last_month.month
    when 11; assert_equal Month.new(10).month, Month.last_month.month
    when 12; assert_equal Month.new(11).month, Month.last_month.month
    end
  end
  
  def test_self_last_month_with_month_argument
    today = Date.today
    case today.month
    when 1; assert_equal Month.new(today.year - 1, 12).month, Month.last_month(1).month
    when 2; assert_equal Month.new(1).month, Month.last_month(2).month
    when 3; assert_equal Month.new(2).month, Month.last_month(3).month
    when 4; assert_equal Month.new(3).month, Month.last_month(4).month
    when 5; assert_equal Month.new(4).month, Month.last_month(5).month
    when 6; assert_equal Month.new(5).month, Month.last_month(6).month
    when 7; assert_equal Month.new(6).month, Month.last_month(7).month
    when 8; assert_equal Month.new(7).month, Month.last_month(8).month
    when 9; assert_equal Month.new(8).month, Month.last_month(9).month
    when 10; assert_equal Month.new(9).month, Month.last_month(10).month
    when 11; assert_equal Month.new(10).month, Month.last_month(11).month
    when 12; assert_equal Month.new(11).month, Month.last_month(12).month
    end
  end
  
  def test_self_last_month_with_month_and_year_argument
    assert_equal Month.new(2010, 12), Month.last_month(2011, 1)
    assert_equal Month.new(2011, 11), Month.last_month(2011, 12)
    assert_equal Month.new(2012, 10), Month.last_month(2012, 11)
  end
  
end
