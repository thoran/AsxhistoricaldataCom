# tc_Month_self.now

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_today < MiniTest::Unit::TestCase
    
  def test_self_now
    assert_equal Month.new(Date.today.year, Date.today.month), Month.now
  end
  
end
