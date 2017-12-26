# tc_Month_to_s

# 20120120
# 0.9.2

# Changes: since 0.8: 
# 1. I changeed the default result to short so as Francis Hwang's version 0.1.2 of Month test suite passes.  
# 0/1
# 2. I changed Francis Hwang's version 0.1.2 test suite to expect the long version as was mine previously.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_to_s < MiniTest::Unit::TestCase
  
  def test_to_s_with_no_arguments
    assert_equal 'January 2011', Month.new(2011, 1).to_s
  end
  
  def test_to_s_with_long_argument
    assert_equal 'January 2011', Month.new(2011, 1).to_s(:long)
    assert_equal 'January 2011', Month.new(2011, 1).to_s('long')
  end
  
  def test_to_s_with_short_argument
    assert_equal 'Jan 2011', Month.new(2011, 1).to_s(:short)
    assert_equal 'Jan 2011', Month.new(2011, 1).to_s('short')
  end
  
  def test_to_s_with_iso_argument
    assert_equal '2011-01', Month.new(2011, 1).to_s(:iso)
    assert_equal '2011-01', Month.new(2011, 1).to_s('iso')
  end
  
  def test_to_s_with_iso_iso_8601_argument
    assert_equal '2011-01', Month.new(2011, 1).to_s(:iso_8601)
    assert_equal '2011-01', Month.new(2011, 1).to_s('iso_8601')
  end
  
end
