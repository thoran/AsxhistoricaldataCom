# tc_Month_to_long

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_to_long < MiniTest::Unit::TestCase
  
  def test_to_long
    assert_equal 'January', Month.new(2006, 1).to_long
    assert_equal 'February', Month.new(2006, 2).to_long
    assert_equal 'March', Month.new(2006, 3).to_long
    assert_equal 'April', Month.new(2006, 4).to_long
    assert_equal 'May', Month.new(2006, 5).to_long
    assert_equal 'June', Month.new(2006, 6).to_long
    assert_equal 'July', Month.new(2006, 7).to_long
    assert_equal 'August', Month.new(2006, 8).to_long
    assert_equal 'September', Month.new(2006, 9).to_long
    assert_equal 'October', Month.new(2006, 10).to_long
    assert_equal 'November', Month.new(2006, 11).to_long
    assert_equal 'December', Month.new(2006, 12).to_long
  end
  
end
