# tc_Month_dates

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Reversed arguments for Month.new.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

if __FILE__ == $0
  require 'minitest/autorun'
  $LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
  require 'Month/Constants'
  require 'Month/initialize'
  require 'Month/dates'
end

class TC_Month_dates < MiniTest::Unit::TestCase
  
  def test_dates
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 1).dates('Monday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 1).dates('Tuesday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 1).dates('Wednesday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 1).dates('Thursday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 1).dates('Friday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 1).dates('Saturday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 1).dates('Sunday')
    
    assert_equal [6, 13, 20, 27], Month.new(2006, 2).dates('Monday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 2).dates('Tuesday')
    assert_equal [1, 8, 15, 22], Month.new(2006, 2).dates('Wednesday')
    assert_equal [2, 9, 16, 23], Month.new(2006, 2).dates('Thursday')
    assert_equal [3, 10, 17, 24], Month.new(2006, 2).dates('Friday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 2).dates('Saturday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 2).dates('Sunday')
    
    assert_equal [6, 13, 20, 27], Month.new(2006, 3).dates('Monday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 3).dates('Tuesday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 3).dates('Wednesday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 3).dates('Thursday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 3).dates('Friday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 3).dates('Saturday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 3).dates('Sunday')
    
    assert_equal [3, 10, 17, 24], Month.new(2006, 4).dates('Monday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 4).dates('Tuesday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 4).dates('Wednesday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 4).dates('Thursday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 4).dates('Friday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 4).dates('Saturday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 4).dates('Sunday')
    
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 5).dates('Monday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 5).dates('Tuesday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 5).dates('Wednesday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 5).dates('Thursday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 5).dates('Friday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 5).dates('Saturday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 5).dates('Sunday')
    
    assert_equal [5, 12, 19, 26], Month.new(2006, 6).dates('Monday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 6).dates('Tuesday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 6).dates('Wednesday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 6).dates('Thursday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 6).dates('Friday')
    assert_equal [3, 10, 17, 24], Month.new(2006, 6).dates('Saturday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 6).dates('Sunday')
    
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 7).dates('Monday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 7).dates('Tuesday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 7).dates('Wednesday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 7).dates('Thursday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 7).dates('Friday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 7).dates('Saturday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 7).dates('Sunday')
    
    assert_equal [7, 14, 21, 28], Month.new(2006, 8).dates('Monday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 8).dates('Tuesday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 8).dates('Wednesday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 8).dates('Thursday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 8).dates('Friday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 8).dates('Saturday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 8).dates('Sunday')
    
    assert_equal [4, 11, 18, 25], Month.new(2006, 9).dates('Monday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 9).dates('Tuesday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 9).dates('Wednesday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 9).dates('Thursday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 9).dates('Friday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 9).dates('Saturday')
    assert_equal [3, 10, 17, 24], Month.new(2006, 9).dates('Sunday')
    
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 10).dates('Monday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 10).dates('Tuesday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 10).dates('Wednesday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 10).dates('Thursday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 10).dates('Friday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 10).dates('Saturday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 10).dates('Sunday')
    
    assert_equal [6, 13, 20, 27], Month.new(2006, 11).dates('Monday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 11).dates('Tuesday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 11).dates('Wednesday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 11).dates('Thursday')
    assert_equal [3, 10, 17, 24], Month.new(2006, 11).dates('Friday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 11).dates('Saturday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 11).dates('Sunday')
    
    assert_equal [4, 11, 18, 25], Month.new(2006, 12).dates('Monday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 12).dates('Tuesday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 12).dates('Wednesday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 12).dates('Thursday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 12).dates('Friday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 12).dates('Saturday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 12).dates('Sunday')
  end
  
end
