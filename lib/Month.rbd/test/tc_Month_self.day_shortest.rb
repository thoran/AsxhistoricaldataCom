# tc_Month_self.day_shortest

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_day_shortest < MiniTest::Unit::TestCase
    
  def test_num_as_num
    assert_equal 'Su', Month.day_shortest(1, 10, 2006)
    assert_equal 'Mo', Month.day_shortest(2, 10, 2006)
    assert_equal 'Tu', Month.day_shortest(3, 10, 2006)
    assert_equal 'We', Month.day_shortest(4, 10, 2006)
    assert_equal 'Th', Month.day_shortest(5, 10, 2006)
    assert_equal 'Fr', Month.day_shortest(6, 10, 2006)
    assert_equal 'Sa', Month.day_shortest(7, 10, 2006)
    assert_equal 'Su', Month.day_shortest(8, 10, 2006)
    assert_equal 'Mo', Month.day_shortest(9, 10, 2006)
    assert_equal 'Tu', Month.day_shortest(10, 10, 2006)
    assert_equal 'We', Month.day_shortest(11, 10, 2006)
    assert_equal 'Th', Month.day_shortest(12, 10, 2006)
    assert_equal 'Fr', Month.day_shortest(13, 10, 2006)
    assert_equal 'Sa', Month.day_shortest(14, 10, 2006)
    assert_equal 'Su', Month.day_shortest(15, 10, 2006)
    assert_equal 'Mo', Month.day_shortest(16, 10, 2006)
    assert_equal 'Tu', Month.day_shortest(17, 10, 2006)
    assert_equal 'We', Month.day_shortest(18, 10, 2006)
    assert_equal 'Th', Month.day_shortest(19, 10, 2006)
    assert_equal 'Fr', Month.day_shortest(20, 10, 2006)
    assert_equal 'Sa', Month.day_shortest(21, 10, 2006)
    assert_equal 'Su', Month.day_shortest(22, 10, 2006)
    assert_equal 'Mo', Month.day_shortest(23, 10, 2006)
    assert_equal 'Tu', Month.day_shortest(24, 10, 2006)
    assert_equal 'We', Month.day_shortest(25, 10, 2006)
    assert_equal 'Th', Month.day_shortest(26, 10, 2006)
    assert_equal 'Fr', Month.day_shortest(27, 10, 2006)
    assert_equal 'Sa', Month.day_shortest(28, 10, 2006)
    assert_equal 'Su', Month.day_shortest(29, 10, 2006)
    assert_equal 'Mo', Month.day_shortest(30, 10, 2006)
    assert_equal 'Tu', Month.day_shortest(31, 10, 2006)
    assert_equal 'We', Month.day_shortest(1, 11, 2006)
  end
  
  def test_num_as_string
    assert_equal 'Su', Month.day_shortest('1', '10', '2006')
    assert_equal 'Mo', Month.day_shortest('2', '10', '2006')
    assert_equal 'Tu', Month.day_shortest('3', '10', '2006')
    assert_equal 'We', Month.day_shortest('4', '10', '2006')
    assert_equal 'Th', Month.day_shortest('5', '10', '2006')
    assert_equal 'Fr', Month.day_shortest('6', '10', '2006')
    assert_equal 'Sa', Month.day_shortest('7', '10', '2006')
    assert_equal 'Su', Month.day_shortest('8', '10', '2006')
    assert_equal 'Mo', Month.day_shortest('9', '10', '2006')
    assert_equal 'Tu', Month.day_shortest('10', '10', '2006')
    assert_equal 'We', Month.day_shortest('11', '10', '2006')
    assert_equal 'Th', Month.day_shortest('12', '10', '2006')
    assert_equal 'Fr', Month.day_shortest('13', '10', '2006')
    assert_equal 'Sa', Month.day_shortest('14', '10', '2006')
    assert_equal 'Su', Month.day_shortest('15', '10', '2006')
    assert_equal 'Mo', Month.day_shortest('16', '10', '2006')
    assert_equal 'Tu', Month.day_shortest('17', '10', '2006')
    assert_equal 'We', Month.day_shortest('18', '10', '2006')
    assert_equal 'Th', Month.day_shortest('19', '10', '2006')
    assert_equal 'Fr', Month.day_shortest('20', '10', '2006')
    assert_equal 'Sa', Month.day_shortest('21', '10', '2006')
    assert_equal 'Su', Month.day_shortest('22', '10', '2006')
    assert_equal 'Mo', Month.day_shortest('23', '10', '2006')
    assert_equal 'Tu', Month.day_shortest('24', '10', '2006')
    assert_equal 'We', Month.day_shortest('25', '10', '2006')
    assert_equal 'Th', Month.day_shortest('26', '10', '2006')
    assert_equal 'Fr', Month.day_shortest('27', '10', '2006')
    assert_equal 'Sa', Month.day_shortest('28', '10', '2006')
    assert_equal 'Su', Month.day_shortest('29', '10', '2006')
    assert_equal 'Mo', Month.day_shortest('30', '10', '2006')
    assert_equal 'Tu', Month.day_shortest('31', '10', '2006')
    assert_equal 'We', Month.day_shortest('1', '11', '2006')
  end

  def test_num_as_num_with_defaults
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal 'Su', Month.day_shortest(1)
      assert_equal 'Mo', Month.day_shortest(2)
      assert_equal 'Tu', Month.day_shortest(3)
      assert_equal 'We', Month.day_shortest(4)
      assert_equal 'Th', Month.day_shortest(5)
      assert_equal 'Fr', Month.day_shortest(6)
      assert_equal 'Sa', Month.day_shortest(7)
      assert_equal 'Su', Month.day_shortest(8)
      assert_equal 'Mo', Month.day_shortest(9)
      assert_equal 'Tu', Month.day_shortest(10)
      assert_equal 'We', Month.day_shortest(11)
      assert_equal 'Th', Month.day_shortest(12)
      assert_equal 'Fr', Month.day_shortest(13)
      assert_equal 'Sa', Month.day_shortest(14)
      assert_equal 'Su', Month.day_shortest(15)
      assert_equal 'Mo', Month.day_shortest(16)
      assert_equal 'Tu', Month.day_shortest(17)
      assert_equal 'We', Month.day_shortest(18)
      assert_equal 'Th', Month.day_shortest(19)
      assert_equal 'Fr', Month.day_shortest(20)
      assert_equal 'Sa', Month.day_shortest(21)
      assert_equal 'Su', Month.day_shortest(22)
      assert_equal 'Mo', Month.day_shortest(23)
      assert_equal 'Tu', Month.day_shortest(24)
      assert_equal 'We', Month.day_shortest(25)
      assert_equal 'Th', Month.day_shortest(26)
      assert_equal 'Fr', Month.day_shortest(27)
      assert_equal 'Sa', Month.day_shortest(28)
      assert_equal 'Su', Month.day_shortest(29)
      assert_equal 'Mo', Month.day_shortest(30)
      assert_equal 'Tu', Month.day_shortest(31)
    end
  end
  
  def test_num_as_string_with_defaults
    if Date.today.year == 2006 && Date.today.month == 10
      assert_equal 'Su', Month.day_shortest('1')
      assert_equal 'Mo', Month.day_shortest('2')
      assert_equal 'Tu', Month.day_shortest('3')
      assert_equal 'We', Month.day_shortest('4')
      assert_equal 'Th', Month.day_shortest('5')
      assert_equal 'Fr', Month.day_shortest('6')
      assert_equal 'Sa', Month.day_shortest('7')
      assert_equal 'Su', Month.day_shortest('8')
      assert_equal 'Mo', Month.day_shortest('9')
      assert_equal 'Tu', Month.day_shortest('10')
      assert_equal 'We', Month.day_shortest('11')
      assert_equal 'Th', Month.day_shortest('12')
      assert_equal 'Fr', Month.day_shortest('13')
      assert_equal 'Sa', Month.day_shortest('14')
      assert_equal 'Su', Month.day_shortest('15')
      assert_equal 'Mo', Month.day_shortest('16')
      assert_equal 'Tu', Month.day_shortest('17')
      assert_equal 'We', Month.day_shortest('18')
      assert_equal 'Th', Month.day_shortest('19')
      assert_equal 'Fr', Month.day_shortest('20')
      assert_equal 'Sa', Month.day_shortest('21')
      assert_equal 'Su', Month.day_shortest('22')
      assert_equal 'Mo', Month.day_shortest('23')
      assert_equal 'Tu', Month.day_shortest('24')
      assert_equal 'We', Month.day_shortest('25')
      assert_equal 'Th', Month.day_shortest('26')
      assert_equal 'Fr', Month.day_shortest('27')
      assert_equal 'Sa', Month.day_shortest('28')
      assert_equal 'Su', Month.day_shortest('29')
      assert_equal 'Mo', Month.day_shortest('30')
      assert_equal 'Tu', Month.day_shortest('31')
    end
  end
  
  def test_crap
    assert_equal nil, Month.day_shortest('random')
    assert_equal nil, Month.day_shortest(32)
  end
  
end
