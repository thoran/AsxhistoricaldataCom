# tc_Month_last

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_last < MiniTest::Unit::TestCase
  
  def test_plus
    assert_equal Month.new(2010, 12), Month.new(2011, 1).last
    assert_equal Month.new(2011, 11), Month.new(2011, 12).last
    assert_equal Month.new(2011, 10), Month.new(2011, 11).last
  end
  
end