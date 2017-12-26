# tc_Month_self.dates

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

if __FILE__ == $0
  require 'minitest/autorun'
  $LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
  require 'Month/Constants'
  require 'Month/self.dates'
end

class TC_Month_self_dates < MiniTest::Unit::TestCase
  
  def test_no_day
    assert_equal (1..31).collect{|date| date}, Month.dates(2006, 10)
  end
  
  def test_date_objects_true_no_day
    assert_equal (1..31).collect{|date| Date.new(2006, 10, date)}, Month.dates(2006, 10, :date_objects => true)
  end
  
  def test_day_capitalized_long
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => 'Sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => 'Monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => 'Tuesday')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => 'Wednesday')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => 'Thursday')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => 'Friday')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => 'Saturday')
  end
  
  def test_day_downcase_long
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10 , :day => 'sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => 'monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => 'tuesday')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => 'wednesday')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => 'thursday')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => 'friday')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => 'saturday')
  end
  
  def test_day_capitalized_short
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => 'Sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => 'Mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => 'Tue')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => 'Wed')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => 'Thu')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => 'Fri')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => 'Sat')
  end
  
  def test_day_downcase_short
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => 'sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => 'mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => 'tue')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => 'wed')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => 'thu')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => 'fri')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => 'sat')
  end
  
  def test_day_as_num_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => 0)
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => 1)
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => 2)
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => 3)
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => 4)
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => 5)
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => 6)
  end
  
  def test_day_as_num_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => '0')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => '1')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => '2')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => '3')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => '4')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => '5')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => '6')
  end
  
  def test_day_capitalized_long_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => 'Sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => 'Monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => 'Tuesday')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => 'Wednesday')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => 'Thursday')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => 'Friday')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => 'Saturday')
  end
  
  def test_day_downcase_long_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => 'sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => 'monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => 'tuesday')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => 'wednesday')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => 'thursday')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => 'friday')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => 'saturday')
  end
  
  def test_day_capitalized_short_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => 'Sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => 'Mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => 'Tue')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => 'Wed')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => 'Thu')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => 'Fri')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => 'Sat')
  end
  
  def test_day_downcase_short_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => 'sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => 'mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => 'tue')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => 'wed')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => 'thu')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => 'fri')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => 'sat')
  end
  
  def test_day_as_num_as_num_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => 0)
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => 1)
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => 2)
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => 3)
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => 4)
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => 5)
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => 6)
  end
  
  def test_day_as_num_as_string_with_num_month_as_num
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 10, :day => '0')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 10, :day => '1')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 10, :day => '2')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 10, :day => '3')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 10, :day => '4')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 10, :day => '5')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 10, :day => '6')
  end
  
  def test_day_capitalized_long_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, '10', :day => 'Sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, '10', :day => 'Monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, '10', :day => 'Tuesday')
    assert_equal [4, 11, 18, 25], Month.dates(2006, '10', :day => 'Wednesday')
    assert_equal [5, 12, 19, 26], Month.dates(2006, '10', :day => 'Thursday')
    assert_equal [6, 13, 20, 27], Month.dates(2006, '10', :day => 'Friday')
    assert_equal [7, 14, 21, 28], Month.dates(2006, '10', :day => 'Saturday')
  end
  
  def test_day_downcase_long_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, '10', :day => 'sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, '10', :day => 'monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, '10', :day => 'tuesday')
    assert_equal [4, 11, 18, 25], Month.dates(2006, '10', :day => 'wednesday')
    assert_equal [5, 12, 19, 26], Month.dates(2006, '10', :day => 'thursday')
    assert_equal [6, 13, 20, 27], Month.dates(2006, '10', :day => 'friday')
    assert_equal [7, 14, 21, 28], Month.dates(2006, '10', :day => 'saturday')
  end
  
  def test_day_capitalized_short_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, '10', :day => 'Sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, '10', :day => 'Mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, '10', :day => 'Tue')
    assert_equal [4, 11, 18, 25], Month.dates(2006, '10', :day => 'Wed')
    assert_equal [5, 12, 19, 26], Month.dates(2006, '10', :day => 'Thu')
    assert_equal [6, 13, 20, 27], Month.dates(2006, '10', :day => 'Fri')
    assert_equal [7, 14, 21, 28], Month.dates(2006, '10', :day => 'Sat')
  end
  
  def test_day_downcase_short_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, '10', :day => 'sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, '10', :day => 'mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, '10', :day => 'tue')
    assert_equal [4, 11, 18, 25], Month.dates(2006, '10', :day => 'wed')
    assert_equal [5, 12, 19, 26], Month.dates(2006, '10', :day => 'thu')
    assert_equal [6, 13, 20, 27], Month.dates(2006, '10', :day => 'fri')
    assert_equal [7, 14, 21, 28], Month.dates(2006, '10', :day => 'sat')
  end
  
  def test_day_as_num_as_num_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, '10', :day => 0)
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, '10', :day => 1)
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, '10', :day => 2)
    assert_equal [4, 11, 18, 25], Month.dates(2006, '10', :day => 3)
    assert_equal [5, 12, 19, 26], Month.dates(2006, '10', :day => 4)
    assert_equal [6, 13, 20, 27], Month.dates(2006, '10', :day => 5)
    assert_equal [7, 14, 21, 28], Month.dates(2006, '10', :day => 6)
  end
  
  def test_day_as_num_as_string_with_num_month_as_string
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, '10', :day => '0')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, '10', :day => '1')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, '10', :day => '2')
    assert_equal [4, 11, 18, 25], Month.dates(2006, '10', :day => '3')
    assert_equal [5, 12, 19, 26], Month.dates(2006, '10', :day => '4')
    assert_equal [6, 13, 20, 27], Month.dates(2006, '10', :day => '5')
    assert_equal [7, 14, 21, 28], Month.dates(2006, '10', :day => '6')
  end
  
  def test_day_capitalized_long_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'October', :day => 'Sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'October', :day => 'Monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'October', :day => 'Tuesday')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'October', :day => 'Wednesday')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'October', :day => 'Thursday')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'October', :day => 'Friday')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'October', :day => 'Saturday')
  end
  
  def test_day_downcase_long_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'October', :day => 'sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'October', :day => 'monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'October', :day => 'tuesday')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'October', :day => 'wednesday')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'October', :day => 'thursday')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'October', :day => 'friday')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'October', :day => 'saturday')
  end
  
  def test_day_capitalized_short_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'October', :day => 'Sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'October', :day => 'Mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'October', :day => 'Tue')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'October', :day => 'Wed')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'October', :day => 'Thu')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'October', :day => 'Fri')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'October', :day => 'Sat')
  end
  
  def test_day_downcase_short_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'October', :day => 'sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'October', :day => 'mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'October', :day => 'tue')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'October', :day => 'wed')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'October', :day => 'thu')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'October', :day => 'fri')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'October', :day => 'sat')
  end
  
  def test_day_as_num_as_num_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'October', :day => 0)
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'October', :day => 1)
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'October', :day => 2)
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'October', :day => 3)
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'October', :day => 4)
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'October', :day => 5)
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'October', :day => 6)
  end
  
  def test_day_as_num_as_string_with_month_long
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'October', :day => '0')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'October', :day => '1')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'October', :day => '2')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'October', :day => '3')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'October', :day => '4')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'October', :day => '5')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'October', :day => '6')
  end
  
  def test_day_capitalized_long_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'Oct', :day => 'Sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'Oct', :day => 'Monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'Oct', :day => 'Tuesday')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'Oct', :day => 'Wednesday')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'Oct', :day => 'Thursday')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'Oct', :day => 'Friday')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'Oct', :day => 'Saturday')
  end
  
  def test_day_downcase_long_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'Oct', :day => 'sunday')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'Oct', :day => 'monday')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'Oct', :day => 'tuesday')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'Oct', :day => 'wednesday')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'Oct', :day => 'thursday')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'Oct', :day => 'friday')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'Oct', :day => 'saturday')
  end
  
  def test_day_capitalized_short_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'Oct', :day => 'Sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'Oct', :day => 'Mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'Oct', :day => 'Tue')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'Oct', :day => 'Wed')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'Oct', :day => 'Thu')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'Oct', :day => 'Fri')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'Oct', :day => 'Sat')
  end
  
  def test_day_downcase_short_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'Oct', :day => 'sun')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'Oct', :day => 'mon')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'Oct', :day => 'tue')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'Oct', :day => 'wed')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'Oct', :day => 'thu')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'Oct', :day => 'fri')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'Oct', :day => 'sat')
  end
  
  def test_day_as_num_as_num_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'Oct', :day => 0)
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'Oct', :day => 1)
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'Oct', :day => 2)
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'Oct', :day => 3)
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'Oct', :day => 4)
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'Oct', :day => 5)
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'Oct', :day => 6)
  end
  
  def test_day_as_num_as_string_with_month_short
    assert_equal [1, 8, 15, 22, 29], Month.dates(2006, 'Oct', :day => '0')
    assert_equal [2, 9, 16, 23, 30], Month.dates(2006, 'Oct', :day => '1')
    assert_equal [3, 10, 17, 24, 31], Month.dates(2006, 'Oct', :day => '2')
    assert_equal [4, 11, 18, 25], Month.dates(2006, 'Oct', :day => '3')
    assert_equal [5, 12, 19, 26], Month.dates(2006, 'Oct', :day => '4')
    assert_equal [6, 13, 20, 27], Month.dates(2006, 'Oct', :day => '5')
    assert_equal [7, 14, 21, 28], Month.dates(2006, 'Oct', :day => '6')
  end
  
  def test_crap
    assert_equal nil, Month.dates('random')
    assert_equal nil, Month.dates(32)
  end
  
end
