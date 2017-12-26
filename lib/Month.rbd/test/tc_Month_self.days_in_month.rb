# tc_Month_self.days_in_month

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_days_in_month < MiniTest::Unit::TestCase
  
  def test_long_capitalized
    assert_equal 31, Month.days_in_month('January')
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_month('February')
    end
    assert_equal 28, Month.days_in_month(2007, 'February')
    assert_equal 29, Month.days_in_month(2008, 'February')
    assert_equal 31, Month.days_in_month('March')
    assert_equal 30, Month.days_in_month('April')
    assert_equal 31, Month.days_in_month('May')
    assert_equal 30, Month.days_in_month('June')
    assert_equal 31, Month.days_in_month('July')
    assert_equal 31, Month.days_in_month('August')
    assert_equal 30, Month.days_in_month('September')
    assert_equal 31, Month.days_in_month('October')
    assert_equal 30, Month.days_in_month('November')
    assert_equal 31, Month.days_in_month('December')
  end
  
  def test_long_downcase
    assert_equal 31, Month.days_in_month('january')
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_month('february')
    end
    assert_equal 28, Month.days_in_month(2007, 'february')
    assert_equal 29, Month.days_in_month(2008, 'february')
    assert_equal 31, Month.days_in_month('march')
    assert_equal 30, Month.days_in_month('april')
    assert_equal 31, Month.days_in_month('may')
    assert_equal 30, Month.days_in_month('june')
    assert_equal 31, Month.days_in_month('july')
    assert_equal 31, Month.days_in_month('august')
    assert_equal 30, Month.days_in_month('september')
    assert_equal 31, Month.days_in_month('october')
    assert_equal 30, Month.days_in_month('november')
    assert_equal 31, Month.days_in_month('december')
  end
  
  def test_short_capitalized
    assert_equal 31, Month.days_in_month('Jan')
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_month('Feb')
    end
    assert_equal 28, Month.days_in_month(2007, 'Feb')
    assert_equal 29, Month.days_in_month(2008, 'Feb')
    assert_equal 31, Month.days_in_month('Mar')
    assert_equal 30, Month.days_in_month('Apr')
    assert_equal 31, Month.days_in_month('May')
    assert_equal 30, Month.days_in_month('Jun')
    assert_equal 31, Month.days_in_month('Jul')
    assert_equal 31, Month.days_in_month('Aug')
    assert_equal 30, Month.days_in_month('Sep')
    assert_equal 31, Month.days_in_month('Oct')
    assert_equal 30, Month.days_in_month('Nov')
    assert_equal 31, Month.days_in_month('Dec')
  end
  
  def test_short_downcase
    assert_equal 31, Month.days_in_month('jan')
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_month('feb')
    end
    assert_equal 28, Month.days_in_month(2007, 'feb')
    assert_equal 29, Month.days_in_month(2008, 'feb')
    assert_equal 31, Month.days_in_month('mar')
    assert_equal 30, Month.days_in_month('apr')
    assert_equal 31, Month.days_in_month('may')
    assert_equal 30, Month.days_in_month('jun')
    assert_equal 31, Month.days_in_month('jul')
    assert_equal 31, Month.days_in_month('aug')
    assert_equal 30, Month.days_in_month('sep')
    assert_equal 31, Month.days_in_month('oct')
    assert_equal 30, Month.days_in_month('nov')
    assert_equal 31, Month.days_in_month('dec')
  end
  
  def test_num_as_num
    assert_equal 31, Month.days_in_month(1)
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_month(2)
    end
    assert_equal 28, Month.days_in_month(2007, 2)
    assert_equal 29, Month.days_in_month(2008, 2)
    assert_equal 31, Month.days_in_month(3)
    assert_equal 30, Month.days_in_month(4)
    assert_equal 31, Month.days_in_month(5)
    assert_equal 30, Month.days_in_month(6)
    assert_equal 31, Month.days_in_month(7)
    assert_equal 31, Month.days_in_month(8)
    assert_equal 30, Month.days_in_month(9)
    assert_equal 31, Month.days_in_month(10)
    assert_equal 30, Month.days_in_month(11)
    assert_equal 31, Month.days_in_month(12)
  end
  
  def test_num_as_string
    assert_equal 31, Month.days_in_month('1')
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_month('2')
    end
    assert_equal 28, Month.days_in_month(2007, '2')
    assert_equal 29, Month.days_in_month(2008, '2')
    assert_equal 31, Month.days_in_month('3')
    assert_equal 30, Month.days_in_month('4')
    assert_equal 31, Month.days_in_month('5')
    assert_equal 30, Month.days_in_month('6')
    assert_equal 31, Month.days_in_month('7')
    assert_equal 31, Month.days_in_month('8')
    assert_equal 30, Month.days_in_month('9')
    assert_equal 31, Month.days_in_month('10')
    assert_equal 30, Month.days_in_month('11')
    assert_equal 31, Month.days_in_month('12')
  end
  
  def test_crap
    assert_equal nil, Month.days_in_month('random')
    assert_equal nil, Month.days_in_month(13)
  end
  
end
