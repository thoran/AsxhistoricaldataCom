# tc_Month_self.day_short

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_day_short < MiniTest::Unit::TestCase
    
  def test_num_as_num
    assert_equal 'Sun', Month.new(2006, 10).day_short(1)
    assert_equal 'Mon', Month.new(2006, 10).day_short(2)
    assert_equal 'Tue', Month.new(2006, 10).day_short(3)
    assert_equal 'Wed', Month.new(2006, 10).day_short(4)
    assert_equal 'Thu', Month.new(2006, 10).day_short(5)
    assert_equal 'Fri', Month.new(2006, 10).day_short(6)
    assert_equal 'Sat', Month.new(2006, 10).day_short(7)
    assert_equal 'Sun', Month.new(2006, 10).day_short(8)
    assert_equal 'Mon', Month.new(2006, 10).day_short(9)
    assert_equal 'Tue', Month.new(2006, 10).day_short(10)
    assert_equal 'Wed', Month.new(2006, 10).day_short(11)
    assert_equal 'Thu', Month.new(2006, 10).day_short(12)
    assert_equal 'Fri', Month.new(2006, 10).day_short(13)
    assert_equal 'Sat', Month.new(2006, 10).day_short(14)
    assert_equal 'Sun', Month.new(2006, 10).day_short(15)
    assert_equal 'Mon', Month.new(2006, 10).day_short(16)
    assert_equal 'Tue', Month.new(2006, 10).day_short(17)
    assert_equal 'Wed', Month.new(2006, 10).day_short(18)
    assert_equal 'Thu', Month.new(2006, 10).day_short(19)
    assert_equal 'Fri', Month.new(2006, 10).day_short(20)
    assert_equal 'Sat', Month.new(2006, 10).day_short(21)
    assert_equal 'Sun', Month.new(2006, 10).day_short(22)
    assert_equal 'Mon', Month.new(2006, 10).day_short(23)
    assert_equal 'Tue', Month.new(2006, 10).day_short(24)
    assert_equal 'Wed', Month.new(2006, 10).day_short(25)
    assert_equal 'Thu', Month.new(2006, 10).day_short(26)
    assert_equal 'Fri', Month.new(2006, 10).day_short(27)
    assert_equal 'Sat', Month.new(2006, 10).day_short(28)
    assert_equal 'Sun', Month.new(2006, 10).day_short(29)
    assert_equal 'Mon', Month.new(2006, 10).day_short(30)
    assert_equal 'Tue', Month.new(2006, 10).day_short(31)
    assert_equal 'Wed', Month.new(2006, 11).day_short(1)
  end
  
  def test_num_as_string
    assert_equal 'Sun', Month.new(2006, 10).day_short('1')
    assert_equal 'Mon', Month.new(2006, 10).day_short('2')
    assert_equal 'Tue', Month.new(2006, 10).day_short('3')
    assert_equal 'Wed', Month.new(2006, 10).day_short('4')
    assert_equal 'Thu', Month.new(2006, 10).day_short('5')
    assert_equal 'Fri', Month.new(2006, 10).day_short('6')
    assert_equal 'Sat', Month.new(2006, 10).day_short('7')
    assert_equal 'Sun', Month.new(2006, 10).day_short('8')
    assert_equal 'Mon', Month.new(2006, 10).day_short('9')
    assert_equal 'Tue', Month.new(2006, 10).day_short('10')
    assert_equal 'Wed', Month.new(2006, 10).day_short('11')
    assert_equal 'Thu', Month.new(2006, 10).day_short('12')
    assert_equal 'Fri', Month.new(2006, 10).day_short('13')
    assert_equal 'Sat', Month.new(2006, 10).day_short('14')
    assert_equal 'Sun', Month.new(2006, 10).day_short('15')
    assert_equal 'Mon', Month.new(2006, 10).day_short('16')
    assert_equal 'Tue', Month.new(2006, 10).day_short('17')
    assert_equal 'Wed', Month.new(2006, 10).day_short('18')
    assert_equal 'Thu', Month.new(2006, 10).day_short('19')
    assert_equal 'Fri', Month.new(2006, 10).day_short('20')
    assert_equal 'Sat', Month.new(2006, 10).day_short('21')
    assert_equal 'Sun', Month.new(2006, 10).day_short('22')
    assert_equal 'Mon', Month.new(2006, 10).day_short('23')
    assert_equal 'Tue', Month.new(2006, 10).day_short('24')
    assert_equal 'Wed', Month.new(2006, 10).day_short('25')
    assert_equal 'Thu', Month.new(2006, 10).day_short('26')
    assert_equal 'Fri', Month.new(2006, 10).day_short('27')
    assert_equal 'Sat', Month.new(2006, 10).day_short('28')
    assert_equal 'Sun', Month.new(2006, 10).day_short('29')
    assert_equal 'Mon', Month.new(2006, 10).day_short('30')
    assert_equal 'Tue', Month.new(2006, 10).day_short('31')
    assert_equal 'Wed', Month.new(2006, 11).day_short('1')
  end

  def test_num_as_num_with_defaults
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal 'Sun', Month.new(2006, 10).day_short(1)
      assert_equal 'Mon', Month.new(2006, 10).day_short(2)
      assert_equal 'Tue', Month.new(2006, 10).day_short(3)
      assert_equal 'Wed', Month.new(2006, 10).day_short(4)
      assert_equal 'Thu', Month.new(2006, 10).day_short(5)
      assert_equal 'Fri', Month.new(2006, 10).day_short(6)
      assert_equal 'Sat', Month.new(2006, 10).day_short(7)
      assert_equal 'Sun', Month.new(2006, 10).day_short(8)
      assert_equal 'Mon', Month.new(2006, 10).day_short(9)
      assert_equal 'Tue', Month.new(2006, 10).day_short(10)
      assert_equal 'Wed', Month.new(2006, 10).day_short(11)
      assert_equal 'Thu', Month.new(2006, 10).day_short(12)
      assert_equal 'Fri', Month.new(2006, 10).day_short(13)
      assert_equal 'Sat', Month.new(2006, 10).day_short(14)
      assert_equal 'Sun', Month.new(2006, 10).day_short(15)
      assert_equal 'Mon', Month.new(2006, 10).day_short(16)
      assert_equal 'Tue', Month.new(2006, 10).day_short(17)
      assert_equal 'Wed', Month.new(2006, 10).day_short(18)
      assert_equal 'Thu', Month.new(2006, 10).day_short(19)
      assert_equal 'Fri', Month.new(2006, 10).day_short(20)
      assert_equal 'Sat', Month.new(2006, 10).day_short(21)
      assert_equal 'Sun', Month.new(2006, 10).day_short(22)
      assert_equal 'Mon', Month.new(2006, 10).day_short(23)
      assert_equal 'Tue', Month.new(2006, 10).day_short(24)
      assert_equal 'Wed', Month.new(2006, 10).day_short(25)
      assert_equal 'Thu', Month.new(2006, 10).day_short(26)
      assert_equal 'Fri', Month.new(2006, 10).day_short(27)
      assert_equal 'Sat', Month.new(2006, 10).day_short(28)
      assert_equal 'Sun', Month.new(2006, 10).day_short(29)
      assert_equal 'Mon', Month.new(2006, 10).day_short(30)
      assert_equal 'Tue', Month.new(2006, 10).day_short(31)
    end
  end
  
  def test_num_as_string_with_defaults
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal 'Sun', Month.new(2006, 10).day_short('1')
      assert_equal 'Mon', Month.new(2006, 10).day_short('2')
      assert_equal 'Tue', Month.new(2006, 10).day_short('3')
      assert_equal 'Wed', Month.new(2006, 10).day_short('4')
      assert_equal 'Thu', Month.new(2006, 10).day_short('5')
      assert_equal 'Fri', Month.new(2006, 10).day_short('6')
      assert_equal 'Sat', Month.new(2006, 10).day_short('7')
      assert_equal 'Sun', Month.new(2006, 10).day_short('8')
      assert_equal 'Mon', Month.new(2006, 10).day_short('9')
      assert_equal 'Tue', Month.new(2006, 10).day_short('10')
      assert_equal 'Wed', Month.new(2006, 10).day_short('11')
      assert_equal 'Thu', Month.new(2006, 10).day_short('12')
      assert_equal 'Fri', Month.new(2006, 10).day_short('13')
      assert_equal 'Sat', Month.new(2006, 10).day_short('14')
      assert_equal 'Sun', Month.new(2006, 10).day_short('15')
      assert_equal 'Mon', Month.new(2006, 10).day_short('16')
      assert_equal 'Tue', Month.new(2006, 10).day_short('17')
      assert_equal 'Wed', Month.new(2006, 10).day_short('18')
      assert_equal 'Thu', Month.new(2006, 10).day_short('19')
      assert_equal 'Fri', Month.new(2006, 10).day_short('20')
      assert_equal 'Sat', Month.new(2006, 10).day_short('21')
      assert_equal 'Sun', Month.new(2006, 10).day_short('22')
      assert_equal 'Mon', Month.new(2006, 10).day_short('23')
      assert_equal 'Tue', Month.new(2006, 10).day_short('24')
      assert_equal 'Wed', Month.new(2006, 10).day_short('25')
      assert_equal 'Thu', Month.new(2006, 10).day_short('26')
      assert_equal 'Fri', Month.new(2006, 10).day_short('27')
      assert_equal 'Sat', Month.new(2006, 10).day_short('28')
      assert_equal 'Sun', Month.new(2006, 10).day_short('29')
      assert_equal 'Mon', Month.new(2006, 10).day_short('30')
      assert_equal 'Tue', Month.new(2006, 10).day_short('31')
    end
  end
  
  def test_crap
    assert_equal nil, Month.day_short('random')
    assert_equal nil, Month.day_short(32)
  end
  
end
