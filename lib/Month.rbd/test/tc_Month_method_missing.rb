# tc_Month_method_missing

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_method_missing < MiniTest::Unit::TestCase
  
  def test_method_missing
    if Date.today.year == 2011 && Date.today.month == 1
      assert_equal [3, 10, 17, 24, 31], Month.new(2011, 1).mondays
      assert_equal [4, 11, 18, 25], Month.new(2011, 1).tuesdays
      assert_equal [5, 12, 19, 26], Month.new(2011, 1).wednesdays
      assert_equal [6, 13, 20, 27], Month.new(2011, 1).thursdays
      assert_equal [7, 14, 21, 28], Month.new(2011, 1).fridays
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 1).saturdays
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 1).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 2
      assert_equal [7, 14, 21, 28], Month.new(2011, 2).mondays
      assert_equal [1, 8, 15, 22], Month.new(2011, 2).tuesdays
      assert_equal [2, 9, 16, 23], Month.new(2011, 2).wednesdays
      assert_equal [3, 10, 17, 24], Month.new(2011, 2).thursdays
      assert_equal [4, 11, 18, 25], Month.new(2011, 2).fridays
      assert_equal [5, 12, 19, 26], Month.new(2011, 2).saturdays
      assert_equal [6, 13, 20, 27], Month.new(2011, 2).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 3
      assert_equal [7, 14, 21, 28], Month.new(2011, 3).mondays
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 3).tuesdays
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 3).wednesdays
      assert_equal [3, 10, 17, 24, 31], Month.new(2011, 3).thursdays
      assert_equal [4, 11, 18, 25], Month.new(2011, 3).fridays
      assert_equal [5, 12, 19, 26], Month.new(2011, 3).saturdays
      assert_equal [6, 13, 20, 27], Month.new(2011, 3).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 4
      assert_equal [4, 11, 18, 25], Month.new(2011, 4).mondays
      assert_equal [5, 12, 19, 26], Month.new(2011, 4).tuesdays
      assert_equal [6, 13, 20, 27], Month.new(2011, 4).wednesdays
      assert_equal [7, 14, 21, 28], Month.new(2011, 4).thursdays
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 4).fridays
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 4).saturdays
      assert_equal [3, 10, 17, 24], Month.new(2011, 4).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 5
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 5).mondays
      assert_equal [3, 10, 17, 24, 31], Month.new(2011, 5).tuesdays
      assert_equal [4, 11, 18, 25], Month.new(2011, 5).wednesdays
      assert_equal [5, 12, 19, 26], Month.new(2011, 5).thursdays
      assert_equal [6, 13, 20, 27], Month.new(2011, 5).fridays
      assert_equal [7, 14, 21, 28], Month.new(2011, 5).saturdays
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 5).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 6
      assert_equal [6, 13, 20, 27], Month.new(2011, 6).mondays
      assert_equal [7, 14, 21, 28], Month.new(2011, 6).tuesdays
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 6).wednesdays
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 6).thursdays
      assert_equal [3, 10, 17, 24], Month.new(2011, 6).fridays
      assert_equal [4, 11, 18, 25], Month.new(2011, 6).saturdays
      assert_equal [5, 12, 19, 26], Month.new(2011, 6).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 7
      assert_equal [4, 11, 18, 25], Month.new(2011, 7).mondays
      assert_equal [5, 12, 19, 26], Month.new(2011, 7).tuesdays
      assert_equal [6, 13, 20, 27], Month.new(2011, 7).wednesdays
      assert_equal [7, 14, 21, 28], Month.new(2011, 7).thursdays
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 7).fridays
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 7).saturdays
      assert_equal [3, 10, 17, 24, 31], Month.new(2011, 7).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 8
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 8).mondays
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 8).tuesdays
      assert_equal [3, 10, 17, 24, 31], Month.new(2011, 8).wednesdays
      assert_equal [4, 11, 18, 25], Month.new(2011, 8).thursdays
      assert_equal [5, 12, 19, 26], Month.new(2011, 8).fridays
      assert_equal [6, 13, 20, 27], Month.new(2011, 8).saturdays
      assert_equal [7, 14, 21, 28], Month.new(2011, 8).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 9
      assert_equal [5, 12, 19, 26], Month.new(2011, 9).mondays
      assert_equal [6, 13, 20, 27], Month.new(2011, 9).tuesdays
      assert_equal [7, 14, 21, 28], Month.new(2011, 9).wednesdays
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 9).thursdays
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 9).fridays
      assert_equal [3, 10, 17, 24], Month.new(2011, 9).saturdays
      assert_equal [4, 11, 18, 25], Month.new(2011, 9).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 10
      assert_equal [3, 10, 17, 24, 31], Month.new(2011, 10).mondays
      assert_equal [4, 11, 18, 25], Month.new(2011, 10).tuesdays
      assert_equal [5, 12, 19, 26], Month.new(2011, 10).wednesdays
      assert_equal [6, 13, 20, 27], Month.new(2011, 10).thursdays
      assert_equal [7, 14, 21, 28], Month.new(2011, 10).fridays
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 10).saturdays
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 10).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 11
      assert_equal [7, 14, 21, 28], Month.new(2011, 11).mondays
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 11).tuesdays
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 11).wednesdays
      assert_equal [3, 10, 17, 24], Month.new(2011, 11).thursdays
      assert_equal [4, 11, 18, 25], Month.new(2011, 11).fridays
      assert_equal [5, 12, 19, 26], Month.new(2011, 11).saturdays
      assert_equal [6, 13, 20, 27], Month.new(2011, 11).sundays
    end
    if Date.today.year == 2011 && Date.today.month == 12
      assert_equal [5, 12, 19, 26], Month.new(2011, 12).mondays
      assert_equal [6, 13, 20, 27], Month.new(2011, 12).tuesdays
      assert_equal [7, 14, 21, 28], Month.new(2011, 12).wednesdays
      assert_equal [1, 8, 15, 22, 29], Month.new(2011, 12).thursdays
      assert_equal [2, 9, 16, 23, 30], Month.new(2011, 12).fridays
      assert_equal [3, 10, 17, 24, 31], Month.new(2011, 12).saturdays
      assert_equal [4, 11, 18, 25], Month.new(2011, 12).sundays
    end
  end
  
end
