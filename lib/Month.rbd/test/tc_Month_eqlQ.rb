# tc_Month_eqlQ

# 20120120, 21
# 0.9.2

# Changes since 0.8
# 1. Reversed arguments for Month.new.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Merged test for ==().  

class TC_Month_eqlQ < MiniTest::Unit::TestCase
  
  def test_eqlQ
    assert_equal true, Month.new(2011, 1).eql?(Month.new(2011, 1))
  end
  
  def test_equal_literal
    assert_equal true, Month.new(2011, 1) == Month.new(2011, 1)
  end
  
end
