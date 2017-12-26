# tc_Month_successor

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_successor < MiniTest::Unit::TestCase
  
  def test_successor
    assert_equal Month.new(2011, 2), Month.new(2011, 1).successor
    assert_equal Month.new(2012, 1), Month.new(2011, 12).successor
    assert_equal Month.new(2012, 12), Month.new(2012, 11).successor
  end
  
end
