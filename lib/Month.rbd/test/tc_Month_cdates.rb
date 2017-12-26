# tc_Month_cdates

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
  require 'Month/cdates'
end

class TC_Month_cdates < MiniTest::Unit::TestCase
  
  def test_cdates
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 1).cdates('Monday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 1).cdates('Tuesday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 1).cdates('Wednesday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 1).cdates('Thursday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 1).cdates('Friday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 1).cdates('Saturday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 1).cdates('Sunday')
    
    assert_equal [6, 13, 20, 27], Month.new(2006, 2).cdates('Monday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 2).cdates('Tuesday')
    assert_equal [1, 8, 15, 22], Month.new(2006, 2).cdates('Wednesday')
    assert_equal [2, 9, 16, 23], Month.new(2006, 2).cdates('Thursday')
    assert_equal [3, 10, 17, 24], Month.new(2006, 2).cdates('Friday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 2).cdates('Saturday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 2).cdates('Sunday')
    
    assert_equal [6, 13, 20, 27], Month.new(2006, 3).cdates('Monday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 3).cdates('Tuesday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 3).cdates('Wednesday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 3).cdates('Thursday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 3).cdates('Friday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 3).cdates('Saturday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 3).cdates('Sunday')
    
    assert_equal [3, 10, 17, 24], Month.new(2006, 4).cdates('Monday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 4).cdates('Tuesday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 4).cdates('Wednesday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 4).cdates('Thursday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 4).cdates('Friday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 4).cdates('Saturday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 4).cdates('Sunday')
    
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 5).cdates('Monday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 5).cdates('Tuesday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 5).cdates('Wednesday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 5).cdates('Thursday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 5).cdates('Friday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 5).cdates('Saturday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 5).cdates('Sunday')
    
    assert_equal [5, 12, 19, 26], Month.new(2006, 6).cdates('Monday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 6).cdates('Tuesday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 6).cdates('Wednesday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 6).cdates('Thursday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 6).cdates('Friday')
    assert_equal [3, 10, 17, 24], Month.new(2006, 6).cdates('Saturday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 6).cdates('Sunday')
    
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 7).cdates('Monday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 7).cdates('Tuesday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 7).cdates('Wednesday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 7).cdates('Thursday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 7).cdates('Friday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 7).cdates('Saturday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 7).cdates('Sunday')
    
    assert_equal [7, 14, 21, 28], Month.new(2006, 8).cdates('Monday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 8).cdates('Tuesday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 8).cdates('Wednesday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 8).cdates('Thursday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 8).cdates('Friday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 8).cdates('Saturday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 8).cdates('Sunday')
    
    assert_equal [4, 11, 18, 25], Month.new(2006, 9).cdates('Monday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 9).cdates('Tuesday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 9).cdates('Wednesday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 9).cdates('Thursday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 9).cdates('Friday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 9).cdates('Saturday')
    assert_equal [3, 10, 17, 24], Month.new(2006, 9).cdates('Sunday')
    
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 10).cdates('Monday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 10).cdates('Tuesday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 10).cdates('Wednesday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 10).cdates('Thursday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 10).cdates('Friday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 10).cdates('Saturday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 10).cdates('Sunday')
    
    assert_equal [6, 13, 20, 27], Month.new(2006, 11).cdates('Monday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 11).cdates('Tuesday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 11).cdates('Wednesday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 11).cdates('Thursday')
    assert_equal [3, 10, 17, 24], Month.new(2006, 11).cdates('Friday')
    assert_equal [4, 11, 18, 25], Month.new(2006, 11).cdates('Saturday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 11).cdates('Sunday')
    
    assert_equal [4, 11, 18, 25], Month.new(2006, 12).cdates('Monday')
    assert_equal [5, 12, 19, 26], Month.new(2006, 12).cdates('Tuesday')
    assert_equal [6, 13, 20, 27], Month.new(2006, 12).cdates('Wednesday')
    assert_equal [7, 14, 21, 28], Month.new(2006, 12).cdates('Thursday')
    assert_equal [1, 8, 15, 22, 29], Month.new(2006, 12).cdates('Friday')
    assert_equal [2, 9, 16, 23, 30], Month.new(2006, 12).cdates('Saturday')
    assert_equal [3, 10, 17, 24, 31], Month.new(2006, 12).cdates('Sunday')
  end
  
end
