# tc_Month_comparator

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Reversed arguments for Month.new.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_comparator < MiniTest::Unit::TestCase
  
  def test_equivalence
    assert_equal true, Month.new(2011, 1) == Month.new(2011, 1)
  end
  
  def test_greater_than
    assert_equal true, Month.new(2011, 2) > Month.new(2011, 1)
  end
  
  def test_less_than
    assert_equal true, Month.new(2011, 1) < Month.new(2011, 2)
  end
  
end
