# tc_Month_self.to_long

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_to_long < MiniTest::Unit::TestCase
  
  def test_long_capitalized
    assert_equal 'January', Month.to_long('January')
    assert_equal 'February', Month.to_long('February')
    assert_equal 'March', Month.to_long('March')
    assert_equal 'April', Month.to_long('April')
    assert_equal 'May', Month.to_long('May')
    assert_equal 'June', Month.to_long('June')
    assert_equal 'July', Month.to_long('July')
    assert_equal 'August', Month.to_long('August')
    assert_equal 'September', Month.to_long('September')
    assert_equal 'October', Month.to_long('October')
    assert_equal 'November', Month.to_long('November')
    assert_equal 'December', Month.to_long('December')
  end
  
  def test_long_downcase
    assert_equal 'January', Month.to_long('january')
    assert_equal 'February', Month.to_long('february')
    assert_equal 'March', Month.to_long('march')
    assert_equal 'April', Month.to_long('april')
    assert_equal 'May', Month.to_long('may')
    assert_equal 'June', Month.to_long('june')
    assert_equal 'July', Month.to_long('july')
    assert_equal 'August', Month.to_long('august')
    assert_equal 'September', Month.to_long('september')
    assert_equal 'October', Month.to_long('october')
    assert_equal 'November', Month.to_long('november')
    assert_equal 'December', Month.to_long('december')
  end
  
  def test_short_capitalized
    assert_equal 'January', Month.to_long('Jan')
    assert_equal 'February', Month.to_long('Feb')
    assert_equal 'March', Month.to_long('Mar')
    assert_equal 'April', Month.to_long('Apr')
    assert_equal 'May', Month.to_long('May')
    assert_equal 'June', Month.to_long('Jun')
    assert_equal 'July', Month.to_long('Jul')
    assert_equal 'August', Month.to_long('Aug')
    assert_equal 'September', Month.to_long('Sep')
    assert_equal 'October', Month.to_long('Oct')
    assert_equal 'November', Month.to_long('Nov')
    assert_equal 'December', Month.to_long('Dec')
  end
  
  def test_short_downcase
    assert_equal 'January', Month.to_long('jan')
    assert_equal 'February', Month.to_long('feb')
    assert_equal 'March', Month.to_long('mar')
    assert_equal 'April', Month.to_long('apr')
    assert_equal 'May', Month.to_long('may')
    assert_equal 'June', Month.to_long('jun')
    assert_equal 'July', Month.to_long('jul')
    assert_equal 'August', Month.to_long('aug')
    assert_equal 'September', Month.to_long('sep')
    assert_equal 'October', Month.to_long('oct')
    assert_equal 'November', Month.to_long('nov')
    assert_equal 'December', Month.to_long('dec')
  end
  
  def test_num_as_num
    assert_equal 'January', Month.to_long(1)
    assert_equal 'February', Month.to_long(2)
    assert_equal 'March', Month.to_long(3)
    assert_equal 'April', Month.to_long(4)
    assert_equal 'May', Month.to_long(5)
    assert_equal 'June', Month.to_long(6)
    assert_equal 'July', Month.to_long(7)
    assert_equal 'August', Month.to_long(8)
    assert_equal 'September', Month.to_long(9)
    assert_equal 'October', Month.to_long(10)
    assert_equal 'November', Month.to_long(11)
    assert_equal 'December', Month.to_long(12)
  end
  
  def test_num_as_string
    assert_equal 'January', Month.to_long('1')
    assert_equal 'February', Month.to_long('2')
    assert_equal 'March', Month.to_long('3')
    assert_equal 'April', Month.to_long('4')
    assert_equal 'May', Month.to_long('5')
    assert_equal 'June', Month.to_long('6')
    assert_equal 'July', Month.to_long('7')
    assert_equal 'August', Month.to_long('8')
    assert_equal 'September', Month.to_long('9')
    assert_equal 'October', Month.to_long('10')
    assert_equal 'November', Month.to_long('11')
    assert_equal 'December', Month.to_long('12')
  end
  
  def test_crap
    assert_equal nil, Month.to_long('random')
    assert_equal nil, Month.to_long(13)
  end
  
end
