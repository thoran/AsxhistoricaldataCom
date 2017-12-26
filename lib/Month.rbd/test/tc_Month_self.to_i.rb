# tc_Month_self.to_i

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_to_i < MiniTest::Unit::TestCase
  
  def test_long_capitalized
    assert_equal 1, Month.to_i('January')
    assert_equal 2, Month.to_i('February')
    assert_equal 3, Month.to_i('March')
    assert_equal 4, Month.to_i('April')
    assert_equal 5, Month.to_i('May')
    assert_equal 6, Month.to_i('June')
    assert_equal 7, Month.to_i('July')
    assert_equal 8, Month.to_i('August')
    assert_equal 9, Month.to_i('September')
    assert_equal 10, Month.to_i('October')
    assert_equal 11, Month.to_i('November')
    assert_equal 12, Month.to_i('December')
  end
  
  def test_long_downcase
    assert_equal 1, Month.to_i('january')
    assert_equal 2, Month.to_i('february')
    assert_equal 3, Month.to_i('march')
    assert_equal 4, Month.to_i('april')
    assert_equal 5, Month.to_i('may')
    assert_equal 6, Month.to_i('june')
    assert_equal 7, Month.to_i('july')
    assert_equal 8, Month.to_i('august')
    assert_equal 9, Month.to_i('september')
    assert_equal 10, Month.to_i('october')
    assert_equal 11, Month.to_i('november')
    assert_equal 12, Month.to_i('december')
  end
  
  def test_short_capitalized
    assert_equal 1, Month.to_i('Jan')
    assert_equal 2, Month.to_i('Feb')
    assert_equal 3, Month.to_i('Mar')
    assert_equal 4, Month.to_i('Apr')
    assert_equal 5, Month.to_i('May')
    assert_equal 6, Month.to_i('Jun')
    assert_equal 7, Month.to_i('Jul')
    assert_equal 8, Month.to_i('Aug')
    assert_equal 9, Month.to_i('Sep')
    assert_equal 10, Month.to_i('Oct')
    assert_equal 11, Month.to_i('Nov')
    assert_equal 12, Month.to_i('Dec')
  end
  
  def test_short_downcase
    assert_equal 1, Month.to_i('jan')
    assert_equal 2, Month.to_i('feb')
    assert_equal 3, Month.to_i('mar')
    assert_equal 4, Month.to_i('apr')
    assert_equal 5, Month.to_i('may')
    assert_equal 6, Month.to_i('jun')
    assert_equal 7, Month.to_i('jul')
    assert_equal 8, Month.to_i('aug')
    assert_equal 9, Month.to_i('sep')
    assert_equal 10, Month.to_i('oct')
    assert_equal 11, Month.to_i('nov')
    assert_equal 12, Month.to_i('dec')
  end
  
  def test_num_as_num
    assert_equal 1, Month.to_i(1)
    assert_equal 2, Month.to_i(2)
    assert_equal 3, Month.to_i(3)
    assert_equal 4, Month.to_i(4)
    assert_equal 5, Month.to_i(5)
    assert_equal 6, Month.to_i(6)
    assert_equal 7, Month.to_i(7)
    assert_equal 8, Month.to_i(8)
    assert_equal 9, Month.to_i(9)
    assert_equal 10, Month.to_i(10)
    assert_equal 11, Month.to_i(11)
    assert_equal 12, Month.to_i(12)
  end
  
  def test_num_as_string
    assert_equal 1, Month.to_i('1')
    assert_equal 2, Month.to_i('2')
    assert_equal 3, Month.to_i('3')
    assert_equal 4, Month.to_i('4')
    assert_equal 5, Month.to_i('5')
    assert_equal 6, Month.to_i('6')
    assert_equal 7, Month.to_i('7')
    assert_equal 8, Month.to_i('8')
    assert_equal 9, Month.to_i('9')
    assert_equal 10, Month.to_i('10')
    assert_equal 11, Month.to_i('11')
    assert_equal 12, Month.to_i('12')
  end
  
  def test_crap
    assert_equal nil, Month.to_i('random')
    assert_equal nil, Month.to_i(13)
  end
  
end
