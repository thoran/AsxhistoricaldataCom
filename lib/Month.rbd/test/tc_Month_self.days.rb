# tc_Month_self.days

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_days < MiniTest::Unit::TestCase
  
  def test_long_capitalized
    assert_equal 31, Month.days('January')
    if Date.today.year == 2006
      assert_equal 28, Month.days('February')
    end
    assert_equal 28, Month.days(2007, 'February')
    assert_equal 29, Month.days(2008, 'February')
    assert_equal 31, Month.days('March')
    assert_equal 30, Month.days('April')
    assert_equal 31, Month.days('May')
    assert_equal 30, Month.days('June')
    assert_equal 31, Month.days('July')
    assert_equal 31, Month.days('August')
    assert_equal 30, Month.days('September')
    assert_equal 31, Month.days('October')
    assert_equal 30, Month.days('November')
    assert_equal 31, Month.days('December')
  end
  
  def test_long_downcase
    assert_equal 31, Month.days('january')
    if Date.today.year == 2006
      assert_equal 28, Month.days('february')
    end
    assert_equal 28, Month.days(2007, 'february')
    assert_equal 29, Month.days(2008, 'february')
    assert_equal 31, Month.days('march')
    assert_equal 30, Month.days('april')
    assert_equal 31, Month.days('may')
    assert_equal 30, Month.days('june')
    assert_equal 31, Month.days('july')
    assert_equal 31, Month.days('august')
    assert_equal 30, Month.days('september')
    assert_equal 31, Month.days('october')
    assert_equal 30, Month.days('november')
    assert_equal 31, Month.days('december')
  end
  
  def test_short_capitalized
    assert_equal 31, Month.days('Jan')
    if Date.today.year == 2006
      assert_equal 28, Month.days('Feb')
    end
    assert_equal 28, Month.days(2007, 'Feb')
    assert_equal 29, Month.days(2008, 'Feb')
    assert_equal 31, Month.days('Mar')
    assert_equal 30, Month.days('Apr')
    assert_equal 31, Month.days('May')
    assert_equal 30, Month.days('Jun')
    assert_equal 31, Month.days('Jul')
    assert_equal 31, Month.days('Aug')
    assert_equal 30, Month.days('Sep')
    assert_equal 31, Month.days('Oct')
    assert_equal 30, Month.days('Nov')
    assert_equal 31, Month.days('Dec')
  end
  
  def test_short_downcase
    assert_equal 31, Month.days('jan')
    if Date.today.year == 2006
      assert_equal 28, Month.days('feb')
    end
    assert_equal 28, Month.days(2007, 'feb')
    assert_equal 29, Month.days(2008, 'feb')
    assert_equal 31, Month.days('mar')
    assert_equal 30, Month.days('apr')
    assert_equal 31, Month.days('may')
    assert_equal 30, Month.days('jun')
    assert_equal 31, Month.days('jul')
    assert_equal 31, Month.days('aug')
    assert_equal 30, Month.days('sep')
    assert_equal 31, Month.days('oct')
    assert_equal 30, Month.days('nov')
    assert_equal 31, Month.days('dec')
  end
  
  def test_num_as_num
    assert_equal 31, Month.days(1)
    if Date.today.year == 2006
      assert_equal 28, Month.days(2)
    end
    assert_equal 28, Month.days(2007, 2)
    assert_equal 29, Month.days(2008, 2)
    assert_equal 31, Month.days(3)
    assert_equal 30, Month.days(4)
    assert_equal 31, Month.days(5)
    assert_equal 30, Month.days(6)
    assert_equal 31, Month.days(7)
    assert_equal 31, Month.days(8)
    assert_equal 30, Month.days(9)
    assert_equal 31, Month.days(10)
    assert_equal 30, Month.days(11)
    assert_equal 31, Month.days(12)
  end
  
  def test_num_as_string
    assert_equal 31, Month.days('1')
    if Date.today.year == 2006
      assert_equal 28, Month.days('2')
    end
    assert_equal 28, Month.days(2007, '2')
    assert_equal 29, Month.days(2008, '2')
    assert_equal 31, Month.days('3')
    assert_equal 30, Month.days('4')
    assert_equal 31, Month.days('5')
    assert_equal 30, Month.days('6')
    assert_equal 31, Month.days('7')
    assert_equal 31, Month.days('8')
    assert_equal 30, Month.days('9')
    assert_equal 31, Month.days('10')
    assert_equal 30, Month.days('11')
    assert_equal 31, Month.days('12')
  end
  
  def test_crap
    assert_equal nil, Month.days('random')
    assert_equal nil, Month.days(13)
  end
  
end
