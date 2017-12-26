# tc_Month_self.succ

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_succ < MiniTest::Unit::TestCase
  
  def test_self_succ
    today = Date.today
    case today.month
    when 1; assert_equal Month.new(2).month, Month.succ.month
    when 2; assert_equal Month.new(3).month, Month.succ.month
    when 3; assert_equal Month.new(4).month, Month.succ.month
    when 4; assert_equal Month.new(5).month, Month.succ.month
    when 5; assert_equal Month.new(6).month, Month.succ.month
    when 6; assert_equal Month.new(7).month, Month.succ.month
    when 7; assert_equal Month.new(8).month, Month.succ.month
    when 8; assert_equal Month.new(9).month, Month.succ.month
    when 9; assert_equal Month.new(10).month, Month.succ.month
    when 10; assert_equal Month.new(11).month, Month.succ.month
    when 11; assert_equal Month.new(12).month, Month.succ.month
    when 12; assert_equal Month.new(today.year + 1, 1).month, Month.succ.month
    end
  end
  
end
