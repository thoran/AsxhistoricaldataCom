# tc_Month_self.day_short

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_day_short < MiniTest::Unit::TestCase
    
  def test_num_as_num
    assert_equal 'Sun', Month.day_short(1, 10, 2006)
    assert_equal 'Mon', Month.day_short(2, 10, 2006)
    assert_equal 'Tue', Month.day_short(3, 10, 2006)
    assert_equal 'Wed', Month.day_short(4, 10, 2006)
    assert_equal 'Thu', Month.day_short(5, 10, 2006)
    assert_equal 'Fri', Month.day_short(6, 10, 2006)
    assert_equal 'Sat', Month.day_short(7, 10, 2006)
    assert_equal 'Sun', Month.day_short(8, 10, 2006)
    assert_equal 'Mon', Month.day_short(9, 10, 2006)
    assert_equal 'Tue', Month.day_short(10, 10, 2006)
    assert_equal 'Wed', Month.day_short(11, 10, 2006)
    assert_equal 'Thu', Month.day_short(12, 10, 2006)
    assert_equal 'Fri', Month.day_short(13, 10, 2006)
    assert_equal 'Sat', Month.day_short(14, 10, 2006)
    assert_equal 'Sun', Month.day_short(15, 10, 2006)
    assert_equal 'Mon', Month.day_short(16, 10, 2006)
    assert_equal 'Tue', Month.day_short(17, 10, 2006)
    assert_equal 'Wed', Month.day_short(18, 10, 2006)
    assert_equal 'Thu', Month.day_short(19, 10, 2006)
    assert_equal 'Fri', Month.day_short(20, 10, 2006)
    assert_equal 'Sat', Month.day_short(21, 10, 2006)
    assert_equal 'Sun', Month.day_short(22, 10, 2006)
    assert_equal 'Mon', Month.day_short(23, 10, 2006)
    assert_equal 'Tue', Month.day_short(24, 10, 2006)
    assert_equal 'Wed', Month.day_short(25, 10, 2006)
    assert_equal 'Thu', Month.day_short(26, 10, 2006)
    assert_equal 'Fri', Month.day_short(27, 10, 2006)
    assert_equal 'Sat', Month.day_short(28, 10, 2006)
    assert_equal 'Sun', Month.day_short(29, 10, 2006)
    assert_equal 'Mon', Month.day_short(30, 10, 2006)
    assert_equal 'Tue', Month.day_short(31, 10, 2006)
    assert_equal 'Wed', Month.day_short(1, 11, 2006)
  end
  
  def test_num_as_string
    assert_equal 'Sun', Month.day_short('1', '10', '2006')
    assert_equal 'Mon', Month.day_short('2', '10', '2006')
    assert_equal 'Tue', Month.day_short('3', '10', '2006')
    assert_equal 'Wed', Month.day_short('4', '10', '2006')
    assert_equal 'Thu', Month.day_short('5', '10', '2006')
    assert_equal 'Fri', Month.day_short('6', '10', '2006')
    assert_equal 'Sat', Month.day_short('7', '10', '2006')
    assert_equal 'Sun', Month.day_short('8', '10', '2006')
    assert_equal 'Mon', Month.day_short('9', '10', '2006')
    assert_equal 'Tue', Month.day_short('10', '10', '2006')
    assert_equal 'Wed', Month.day_short('11', '10', '2006')
    assert_equal 'Thu', Month.day_short('12', '10', '2006')
    assert_equal 'Fri', Month.day_short('13', '10', '2006')
    assert_equal 'Sat', Month.day_short('14', '10', '2006')
    assert_equal 'Sun', Month.day_short('15', '10', '2006')
    assert_equal 'Mon', Month.day_short('16', '10', '2006')
    assert_equal 'Tue', Month.day_short('17', '10', '2006')
    assert_equal 'Wed', Month.day_short('18', '10', '2006')
    assert_equal 'Thu', Month.day_short('19', '10', '2006')
    assert_equal 'Fri', Month.day_short('20', '10', '2006')
    assert_equal 'Sat', Month.day_short('21', '10', '2006')
    assert_equal 'Sun', Month.day_short('22', '10', '2006')
    assert_equal 'Mon', Month.day_short('23', '10', '2006')
    assert_equal 'Tue', Month.day_short('24', '10', '2006')
    assert_equal 'Wed', Month.day_short('25', '10', '2006')
    assert_equal 'Thu', Month.day_short('26', '10', '2006')
    assert_equal 'Fri', Month.day_short('27', '10', '2006')
    assert_equal 'Sat', Month.day_short('28', '10', '2006')
    assert_equal 'Sun', Month.day_short('29', '10', '2006')
    assert_equal 'Mon', Month.day_short('30', '10', '2006')
    assert_equal 'Tue', Month.day_short('31', '10', '2006')
    assert_equal 'Wed', Month.day_short('1', '11', '2006')
  end

  def test_num_as_num_with_defaults
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal 'Sun', Month.day_short(1)
      assert_equal 'Mon', Month.day_short(2)
      assert_equal 'Tue', Month.day_short(3)
      assert_equal 'Wed', Month.day_short(4)
      assert_equal 'Thu', Month.day_short(5)
      assert_equal 'Fri', Month.day_short(6)
      assert_equal 'Sat', Month.day_short(7)
      assert_equal 'Sun', Month.day_short(8)
      assert_equal 'Mon', Month.day_short(9)
      assert_equal 'Tue', Month.day_short(10)
      assert_equal 'Wed', Month.day_short(11)
      assert_equal 'Thu', Month.day_short(12)
      assert_equal 'Fri', Month.day_short(13)
      assert_equal 'Sat', Month.day_short(14)
      assert_equal 'Sun', Month.day_short(15)
      assert_equal 'Mon', Month.day_short(16)
      assert_equal 'Tue', Month.day_short(17)
      assert_equal 'Wed', Month.day_short(18)
      assert_equal 'Thu', Month.day_short(19)
      assert_equal 'Fri', Month.day_short(20)
      assert_equal 'Sat', Month.day_short(21)
      assert_equal 'Sun', Month.day_short(22)
      assert_equal 'Mon', Month.day_short(23)
      assert_equal 'Tue', Month.day_short(24)
      assert_equal 'Wed', Month.day_short(25)
      assert_equal 'Thu', Month.day_short(26)
      assert_equal 'Fri', Month.day_short(27)
      assert_equal 'Sat', Month.day_short(28)
      assert_equal 'Sun', Month.day_short(29)
      assert_equal 'Mon', Month.day_short(30)
      assert_equal 'Tue', Month.day_short(31)
    end
  end
  
  def test_num_as_string_with_defaults
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal 'Sun', Month.day_short('1')
      assert_equal 'Mon', Month.day_short('2')
      assert_equal 'Tue', Month.day_short('3')
      assert_equal 'Wed', Month.day_short('4')
      assert_equal 'Thu', Month.day_short('5')
      assert_equal 'Fri', Month.day_short('6')
      assert_equal 'Sat', Month.day_short('7')
      assert_equal 'Sun', Month.day_short('8')
      assert_equal 'Mon', Month.day_short('9')
      assert_equal 'Tue', Month.day_short('10')
      assert_equal 'Wed', Month.day_short('11')
      assert_equal 'Thu', Month.day_short('12')
      assert_equal 'Fri', Month.day_short('13')
      assert_equal 'Sat', Month.day_short('14')
      assert_equal 'Sun', Month.day_short('15')
      assert_equal 'Mon', Month.day_short('16')
      assert_equal 'Tue', Month.day_short('17')
      assert_equal 'Wed', Month.day_short('18')
      assert_equal 'Thu', Month.day_short('19')
      assert_equal 'Fri', Month.day_short('20')
      assert_equal 'Sat', Month.day_short('21')
      assert_equal 'Sun', Month.day_short('22')
      assert_equal 'Mon', Month.day_short('23')
      assert_equal 'Tue', Month.day_short('24')
      assert_equal 'Wed', Month.day_short('25')
      assert_equal 'Thu', Month.day_short('26')
      assert_equal 'Fri', Month.day_short('27')
      assert_equal 'Sat', Month.day_short('28')
      assert_equal 'Sun', Month.day_short('29')
      assert_equal 'Mon', Month.day_short('30')
      assert_equal 'Tue', Month.day_short('31')
    end
  end
  
  def test_crap
    assert_equal nil, Month.day_short('random')
    assert_equal nil, Month.day_short(32)
  end
  
end
