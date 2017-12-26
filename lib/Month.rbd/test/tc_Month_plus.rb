# tc_Month_plus

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 1. + test_minus_method().  
# 2. /test_minus/test_minus_literal/.  

class TC_Month_plus < MiniTest::Unit::TestCase
  
  def test_plus_method
    assert_equal Month.new(2011, 5), Month.new(2011, 1).plus(4)
    assert_equal Month.new(2012, 1), Month.new(2011, 12).plus(1)
    assert_equal Month.new(2012, 1), Month.new(2011, 11).plus(2)
    assert_equal Month.new(2012, 11), Month.new(2011, 11).plus(12)
    assert_equal Month.new(2013, 11), Month.new(2011, 11).plus(24)
    assert_equal Month.new(2011, 1), Month.new(2010, 12).plus(1)
  end
  
  def test_plus_literal
    assert_equal Month.new(2011, 5), Month.new(2011, 1) + 4
    assert_equal Month.new(2012, 1), Month.new(2011, 12) + 1
    assert_equal Month.new(2012, 1), Month.new(2011, 11) + 2
    assert_equal Month.new(2012, 11), Month.new(2011, 11) + 12
    assert_equal Month.new(2013, 11), Month.new(2011, 11) + 24
    assert_equal Month.new(2011, 1), Month.new(2010, 12) + 1
  end
  
end
