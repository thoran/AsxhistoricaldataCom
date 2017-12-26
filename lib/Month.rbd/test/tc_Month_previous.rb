# tc_Month_previous

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_previous < MiniTest::Unit::TestCase
  
  def test_previous
    assert_equal Month.new(2010, 12), Month.new(2011, 1).previous
    assert_equal Month.new(2011, 11), Month.new(2011, 12).previous
    assert_equal Month.new(2011, 10), Month.new(2011, 11).previous
  end
  
end
