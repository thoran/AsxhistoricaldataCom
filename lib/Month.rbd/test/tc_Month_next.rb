# tc_Month_next

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_next < MiniTest::Unit::TestCase
  
  def test_next
    assert_equal Month.new(2011, 2), Month.new(2011, 1).next
    assert_equal Month.new(2012, 1), Month.new(2011, 12).next
    assert_equal Month.new(2012, 1), Month.new(2011, 12).next
    assert_equal Month.new(2011, 12), Month.new(2011, 11).next
  end
  
end
