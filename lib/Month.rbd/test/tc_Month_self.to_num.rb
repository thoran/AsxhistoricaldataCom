# tc_Month_self.to_num

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_to_num < MiniTest::Unit::TestCase
  
  def test_long_capitalized
    assert_equal 1, Month.to_num('January')
    assert_equal 2, Month.to_num('February')
    assert_equal 3, Month.to_num('March')
    assert_equal 4, Month.to_num('April')
    assert_equal 5, Month.to_num('May')
    assert_equal 6, Month.to_num('June')
    assert_equal 7, Month.to_num('July')
    assert_equal 8, Month.to_num('August')
    assert_equal 9, Month.to_num('September')
    assert_equal 10, Month.to_num('October')
    assert_equal 11, Month.to_num('November')
    assert_equal 12, Month.to_num('December')
  end
  
  def test_long_downcase
    assert_equal 1, Month.to_num('january')
    assert_equal 2, Month.to_num('february')
    assert_equal 3, Month.to_num('march')
    assert_equal 4, Month.to_num('april')
    assert_equal 5, Month.to_num('may')
    assert_equal 6, Month.to_num('june')
    assert_equal 7, Month.to_num('july')
    assert_equal 8, Month.to_num('august')
    assert_equal 9, Month.to_num('september')
    assert_equal 10, Month.to_num('october')
    assert_equal 11, Month.to_num('november')
    assert_equal 12, Month.to_num('december')
  end
  
  def test_short_capitalized
    assert_equal 1, Month.to_num('Jan')
    assert_equal 2, Month.to_num('Feb')
    assert_equal 3, Month.to_num('Mar')
    assert_equal 4, Month.to_num('Apr')
    assert_equal 5, Month.to_num('May')
    assert_equal 6, Month.to_num('Jun')
    assert_equal 7, Month.to_num('Jul')
    assert_equal 8, Month.to_num('Aug')
    assert_equal 9, Month.to_num('Sep')
    assert_equal 10, Month.to_num('Oct')
    assert_equal 11, Month.to_num('Nov')
    assert_equal 12, Month.to_num('Dec')
  end
  
  def test_short_downcase
    assert_equal 1, Month.to_num('jan')
    assert_equal 2, Month.to_num('feb')
    assert_equal 3, Month.to_num('mar')
    assert_equal 4, Month.to_num('apr')
    assert_equal 5, Month.to_num('may')
    assert_equal 6, Month.to_num('jun')
    assert_equal 7, Month.to_num('jul')
    assert_equal 8, Month.to_num('aug')
    assert_equal 9, Month.to_num('sep')
    assert_equal 10, Month.to_num('oct')
    assert_equal 11, Month.to_num('nov')
    assert_equal 12, Month.to_num('dec')
  end
  
  def test_num_as_num
    assert_equal 1, Month.to_num(1)
    assert_equal 2, Month.to_num(2)
    assert_equal 3, Month.to_num(3)
    assert_equal 4, Month.to_num(4)
    assert_equal 5, Month.to_num(5)
    assert_equal 6, Month.to_num(6)
    assert_equal 7, Month.to_num(7)
    assert_equal 8, Month.to_num(8)
    assert_equal 9, Month.to_num(9)
    assert_equal 10, Month.to_num(10)
    assert_equal 11, Month.to_num(11)
    assert_equal 12, Month.to_num(12)
  end
  
  def test_num_as_string
    assert_equal 1, Month.to_num('1')
    assert_equal 2, Month.to_num('2')
    assert_equal 3, Month.to_num('3')
    assert_equal 4, Month.to_num('4')
    assert_equal 5, Month.to_num('5')
    assert_equal 6, Month.to_num('6')
    assert_equal 7, Month.to_num('7')
    assert_equal 8, Month.to_num('8')
    assert_equal 9, Month.to_num('9')
    assert_equal 10, Month.to_num('10')
    assert_equal 11, Month.to_num('11')
    assert_equal 12, Month.to_num('12')
  end
  
  def test_crap
    assert_equal nil, Month.to_num('random')
    assert_equal nil, Month.to_num(13)
  end
  
end
