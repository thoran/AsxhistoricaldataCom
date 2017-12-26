# tc_Month_self.day_long

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_day_long < MiniTest::Unit::TestCase
  
  def test_num_as_num
    assert_equal 'Sunday', Month.new(2006, 10).day_long(1)
    assert_equal 'Monday', Month.new(2006, 10).day_long(2)
    assert_equal 'Tuesday', Month.new(2006, 10).day_long(3)
    assert_equal 'Wednesday', Month.new(2006, 10).day_long(4)
    assert_equal 'Thursday', Month.new(2006, 10).day_long(5)
    assert_equal 'Friday', Month.new(2006, 10).day_long(6)
    assert_equal 'Saturday', Month.new(2006, 10).day_long(7)
    assert_equal 'Sunday', Month.new(2006, 10).day_long(8)
    assert_equal 'Monday', Month.new(2006, 10).day_long(9)
    assert_equal 'Tuesday', Month.new(2006, 10).day_long(10)
    assert_equal 'Wednesday', Month.new(2006, 10).day_long(11)
    assert_equal 'Thursday', Month.new(2006, 10).day_long(12)
    assert_equal 'Friday', Month.new(2006, 10).day_long(13)
    assert_equal 'Saturday', Month.new(2006, 10).day_long(14)
    assert_equal 'Sunday', Month.new(2006, 10).day_long(15)
    assert_equal 'Monday', Month.new(2006, 10).day_long(16)
    assert_equal 'Tuesday', Month.new(2006, 10).day_long(17)
    assert_equal 'Wednesday', Month.new(2006, 10).day_long(18)
    assert_equal 'Thursday', Month.new(2006, 10).day_long(19)
    assert_equal 'Friday', Month.new(2006, 10).day_long(20)
    assert_equal 'Saturday', Month.new(2006, 10).day_long(21)
    assert_equal 'Sunday', Month.new(2006, 10).day_long(22)
    assert_equal 'Monday', Month.new(2006, 10).day_long(23)
    assert_equal 'Tuesday', Month.new(2006, 10).day_long(24)
    assert_equal 'Wednesday', Month.new(2006, 10).day_long(25)
    assert_equal 'Thursday', Month.new(2006, 10).day_long(26)
    assert_equal 'Friday', Month.new(2006, 10).day_long(27)
    assert_equal 'Saturday', Month.new(2006, 10).day_long(28)
    assert_equal 'Sunday', Month.new(2006, 10).day_long(29)
    assert_equal 'Monday', Month.new(2006, 10).day_long(30)
    assert_equal 'Tuesday', Month.new(2006, 10).day_long(31)
    assert_equal 'Wednesday', Month.new(2006, 11).day_long(1)
  end
  
  def test_num_as_string
    assert_equal 'Sunday', Month.new(2006, 10).day_long('1')
    assert_equal 'Monday', Month.new(2006, 10).day_long('2')
    assert_equal 'Tuesday', Month.new(2006, 10).day_long('3')
    assert_equal 'Wednesday', Month.new(2006, 10).day_long('4')
    assert_equal 'Thursday', Month.new(2006, 10).day_long('5')
    assert_equal 'Friday', Month.new(2006, 10).day_long('6')
    assert_equal 'Saturday', Month.new(2006, 10).day_long('7')
    assert_equal 'Sunday', Month.new(2006, 10).day_long('8')
    assert_equal 'Monday', Month.new(2006, 10).day_long('9')
    assert_equal 'Tuesday', Month.new(2006, 10).day_long('10')
    assert_equal 'Wednesday', Month.new(2006, 10).day_long('11')
    assert_equal 'Thursday', Month.new(2006, 10).day_long('12')
    assert_equal 'Friday', Month.new(2006, 10).day_long('13')
    assert_equal 'Saturday', Month.new(2006, 10).day_long('14')
    assert_equal 'Sunday', Month.new(2006, 10).day_long('15')
    assert_equal 'Monday', Month.new(2006, 10).day_long('16')
    assert_equal 'Tuesday', Month.new(2006, 10).day_long('17')
    assert_equal 'Wednesday', Month.new(2006, 10).day_long('18')
    assert_equal 'Thursday', Month.new(2006, 10).day_long('19')
    assert_equal 'Friday', Month.new(2006, 10).day_long('20')
    assert_equal 'Saturday', Month.new(2006, 10).day_long('21')
    assert_equal 'Sunday', Month.new(2006, 10).day_long('22')
    assert_equal 'Monday', Month.new(2006, 10).day_long('23')
    assert_equal 'Tuesday', Month.new(2006, 10).day_long('24')
    assert_equal 'Wednesday', Month.new(2006, 10).day_long('25')
    assert_equal 'Thursday', Month.new(2006, 10).day_long('26')
    assert_equal 'Friday', Month.new(2006, 10).day_long('27')
    assert_equal 'Saturday', Month.new(2006, 10).day_long('28')
    assert_equal 'Sunday', Month.new(2006, 10).day_long('29')
    assert_equal 'Monday', Month.new(2006, 10).day_long('30')
    assert_equal 'Tuesday', Month.new(2006, 10).day_long('31')
    assert_equal 'Wednesday', Month.new(2006, 11).day_long('1')
  end
  
  def test_num_as_num_with_defaults
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal 'Sunday', Month.new(2006, 10).day_long(1)
      assert_equal 'Monday', Month.new(2006, 10).day_long(2)
      assert_equal 'Tuesday', Month.new(2006, 10).day_long(3)
      assert_equal 'Wednesday', Month.new(2006, 10).day_long(4)
      assert_equal 'Thursday', Month.new(2006, 10).day_long(5)
      assert_equal 'Friday', Month.new(2006, 10).day_long(6)
      assert_equal 'Saturday', Month.new(2006, 10).day_long(7)
      assert_equal 'Sunday', Month.new(2006, 10).day_long(8)
      assert_equal 'Monday', Month.new(2006, 10).day_long(9)
      assert_equal 'Tuesday', Month.new(2006, 10).day_long(10)
      assert_equal 'Wednesday', Month.new(2006, 10).day_long(11)
      assert_equal 'Thursday', Month.new(2006, 10).day_long(12)
      assert_equal 'Friday', Month.new(2006, 10).day_long(13)
      assert_equal 'Saturday', Month.new(2006, 10).day_long(14)
      assert_equal 'Sunday', Month.new(2006, 10).day_long(15)
      assert_equal 'Monday', Month.new(2006, 10).day_long(16)
      assert_equal 'Tuesday', Month.new(2006, 10).day_long(17)
      assert_equal 'Wednesday', Month.new(2006, 10).day_long(18)
      assert_equal 'Thursday', Month.new(2006, 10).day_long(19)
      assert_equal 'Friday', Month.new(2006, 10).day_long(20)
      assert_equal 'Saturday', Month.new(2006, 10).day_long(21)
      assert_equal 'Sunday', Month.new(2006, 10).day_long(22)
      assert_equal 'Monday', Month.new(2006, 10).day_long(23)
      assert_equal 'Tuesday', Month.new(2006, 10).day_long(24)
      assert_equal 'Wednesday', Month.new(2006, 10).day_long(25)
      assert_equal 'Thursday', Month.new(2006, 10).day_long(26)
      assert_equal 'Friday', Month.new(2006, 10).day_long(27)
      assert_equal 'Saturday', Month.new(2006, 10).day_long(28)
      assert_equal 'Sunday', Month.new(2006, 10).day_long(29)
      assert_equal 'Monday', Month.new(2006, 10).day_long(30)
      assert_equal 'Tuesday', Month.new(2006, 10).day_long(31)
    end
  end
  
  def test_num_as_string_with_defaults
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal 'Sunday', Month.new(2006, 10).day_long('1')
      assert_equal 'Monday', Month.new(2006, 10).day_long('2')
      assert_equal 'Tuesday', Month.new(2006, 10).day_long('3')
      assert_equal 'Wednesday', Month.new(2006, 10).day_long('4')
      assert_equal 'Thursday', Month.new(2006, 10).day_long('5')
      assert_equal 'Friday', Month.new(2006, 10).day_long('6')
      assert_equal 'Saturday', Month.new(2006, 10).day_long('7')
      assert_equal 'Sunday', Month.new(2006, 10).day_long('8')
      assert_equal 'Monday', Month.new(2006, 10).day_long('9')
      assert_equal 'Tuesday', Month.new(2006, 10).day_long('10')
      assert_equal 'Wednesday', Month.new(2006, 10).day_long('11')
      assert_equal 'Thursday', Month.new(2006, 10).day_long('12')
      assert_equal 'Friday', Month.new(2006, 10).day_long('13')
      assert_equal 'Saturday', Month.new(2006, 10).day_long('14')
      assert_equal 'Sunday', Month.new(2006, 10).day_long('15')
      assert_equal 'Monday', Month.new(2006, 10).day_long('16')
      assert_equal 'Tuesday', Month.new(2006, 10).day_long('17')
      assert_equal 'Wednesday', Month.new(2006, 10).day_long('18')
      assert_equal 'Thursday', Month.new(2006, 10).day_long('19')
      assert_equal 'Friday', Month.new(2006, 10).day_long('20')
      assert_equal 'Saturday', Month.new(2006, 10).day_long('21')
      assert_equal 'Sunday', Month.new(2006, 10).day_long('22')
      assert_equal 'Monday', Month.new(2006, 10).day_long('23')
      assert_equal 'Tuesday', Month.new(2006, 10).day_long('24')
      assert_equal 'Wednesday', Month.new(2006, 10).day_long('25')
      assert_equal 'Thursday', Month.new(2006, 10).day_long('26')
      assert_equal 'Friday', Month.new(2006, 10).day_long('27')
      assert_equal 'Saturday', Month.new(2006, 10).day_long('28')
      assert_equal 'Sunday', Month.new(2006, 10).day_long('29')
      assert_equal 'Monday', Month.new(2006, 10).day_long('30')
      assert_equal 'Tuesday', Month.new(2006, 10).day_long('31')
    end
  end
  
  def test_crap
    assert_equal nil, Month.day_long('random')
    assert_equal nil, Month.day_long(32)
  end
  
end
