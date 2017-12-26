# tc_Month_self.days_in_the_month

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_days_in_the_month < MiniTest::Unit::TestCase
  
  def test_long_capitalized
    assert_equal 31, Month.days_in_the_month('January')
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_the_month('February')
    end
    assert_equal 28, Month.days_in_the_month(2007, 'February')
    assert_equal 29, Month.days_in_the_month(2008, 'February')
    assert_equal 31, Month.days_in_the_month('March')
    assert_equal 30, Month.days_in_the_month('April')
    assert_equal 31, Month.days_in_the_month('May')
    assert_equal 30, Month.days_in_the_month('June')
    assert_equal 31, Month.days_in_the_month('July')
    assert_equal 31, Month.days_in_the_month('August')
    assert_equal 30, Month.days_in_the_month('September')
    assert_equal 31, Month.days_in_the_month('October')
    assert_equal 30, Month.days_in_the_month('November')
    assert_equal 31, Month.days_in_the_month('December')
  end
  
  def test_long_downcase
    assert_equal 31, Month.days_in_the_month('january')
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_the_month('february')
    end
    assert_equal 28, Month.days_in_the_month(2007, 'february')
    assert_equal 29, Month.days_in_the_month(2008, 'february')
    assert_equal 31, Month.days_in_the_month('march')
    assert_equal 30, Month.days_in_the_month('april')
    assert_equal 31, Month.days_in_the_month('may')
    assert_equal 30, Month.days_in_the_month('june')
    assert_equal 31, Month.days_in_the_month('july')
    assert_equal 31, Month.days_in_the_month('august')
    assert_equal 30, Month.days_in_the_month('september')
    assert_equal 31, Month.days_in_the_month('october')
    assert_equal 30, Month.days_in_the_month('november')
    assert_equal 31, Month.days_in_the_month('december')
  end
  
  def test_short_capitalized
    assert_equal 31, Month.days_in_the_month('Jan')
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_the_month('Feb')
    end
    assert_equal 28, Month.days_in_the_month(2007, 'Feb')
    assert_equal 29, Month.days_in_the_month(2008, 'Feb')
    assert_equal 31, Month.days_in_the_month('Mar')
    assert_equal 30, Month.days_in_the_month('Apr')
    assert_equal 31, Month.days_in_the_month('May')
    assert_equal 30, Month.days_in_the_month('Jun')
    assert_equal 31, Month.days_in_the_month('Jul')
    assert_equal 31, Month.days_in_the_month('Aug')
    assert_equal 30, Month.days_in_the_month('Sep')
    assert_equal 31, Month.days_in_the_month('Oct')
    assert_equal 30, Month.days_in_the_month('Nov')
    assert_equal 31, Month.days_in_the_month('Dec')
  end
  
  def test_short_downcase
    assert_equal 31, Month.days_in_the_month('jan')
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_the_month('feb')
    end
    assert_equal 28, Month.days_in_the_month(2007, 'feb')
    assert_equal 29, Month.days_in_the_month(2008, 'feb')
    assert_equal 31, Month.days_in_the_month('mar')
    assert_equal 30, Month.days_in_the_month('apr')
    assert_equal 31, Month.days_in_the_month('may')
    assert_equal 30, Month.days_in_the_month('jun')
    assert_equal 31, Month.days_in_the_month('jul')
    assert_equal 31, Month.days_in_the_month('aug')
    assert_equal 30, Month.days_in_the_month('sep')
    assert_equal 31, Month.days_in_the_month('oct')
    assert_equal 30, Month.days_in_the_month('nov')
    assert_equal 31, Month.days_in_the_month('dec')
  end
  
  def test_num_as_num
    assert_equal 31, Month.days_in_the_month(1)
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_the_month(2)
    end
    assert_equal 28, Month.days_in_the_month(2007, 2)
    assert_equal 29, Month.days_in_the_month(2008, 2)
    assert_equal 31, Month.days_in_the_month(3)
    assert_equal 30, Month.days_in_the_month(4)
    assert_equal 31, Month.days_in_the_month(5)
    assert_equal 30, Month.days_in_the_month(6)
    assert_equal 31, Month.days_in_the_month(7)
    assert_equal 31, Month.days_in_the_month(8)
    assert_equal 30, Month.days_in_the_month(9)
    assert_equal 31, Month.days_in_the_month(10)
    assert_equal 30, Month.days_in_the_month(11)
    assert_equal 31, Month.days_in_the_month(12)
  end
  
  def test_num_as_string
    assert_equal 31, Month.days_in_the_month('1')
    if Date.today.year == 2006
      assert_equal 28, Month.days_in_the_month('2')
    end
    assert_equal 28, Month.days_in_the_month(2007, '2')
    assert_equal 29, Month.days_in_the_month(2008, '2')
    assert_equal 31, Month.days_in_the_month('3')
    assert_equal 30, Month.days_in_the_month('4')
    assert_equal 31, Month.days_in_the_month('5')
    assert_equal 30, Month.days_in_the_month('6')
    assert_equal 31, Month.days_in_the_month('7')
    assert_equal 31, Month.days_in_the_month('8')
    assert_equal 30, Month.days_in_the_month('9')
    assert_equal 31, Month.days_in_the_month('10')
    assert_equal 30, Month.days_in_the_month('11')
    assert_equal 31, Month.days_in_the_month('12')
  end
  
  def test_crap
    assert_equal nil, Month.days_in_the_month('random')
    assert_equal nil, Month.days_in_the_month(13)
  end
  
end
