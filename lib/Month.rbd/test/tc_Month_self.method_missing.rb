# tc_Month_self.method_missing

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

class TC_Month_self_method_missing < MiniTest::Unit::TestCase
  
  def test_self_method_missing_for_months
    assert_equal Month.new(1).month, Month.january.month
    assert_equal Month.new(1).year, Month.january.year
    assert_equal Month.new(2).month, Month.february.month
    assert_equal Month.new(2).year, Month.february.year
    assert_equal Month.new(3).month, Month.march.month
    assert_equal Month.new(3).year, Month.march.year
    assert_equal Month.new(4).month, Month.april.month
    assert_equal Month.new(4).year, Month.april.year
    assert_equal Month.new(5).month, Month.may.month
    assert_equal Month.new(5).year, Month.may.year
    assert_equal Month.new(6).month, Month.june.month
    assert_equal Month.new(6).year, Month.june.year
    assert_equal Month.new(7).month, Month.july.month
    assert_equal Month.new(7).year, Month.july.year
    assert_equal Month.new(8).month, Month.august.month
    assert_equal Month.new(8).year, Month.august.year
    assert_equal Month.new(9).month, Month.september.month
    assert_equal Month.new(9).year, Month.september.year
    assert_equal Month.new(10).month, Month.october.month
    assert_equal Month.new(10).year, Month.october.year
    assert_equal Month.new(11).month, Month.november.month
    assert_equal Month.new(11).year, Month.november.year
    assert_equal Month.new(12).month, Month.december.month
    assert_equal Month.new(12).year, Month.december.year
  end
  
  def test_self_method_missing_for_days
    if Date.today.year == 2011 && Date.today.month == 1
      assert_equal Month.new(2011, 1).mondays, Month.mondays
      assert_equal [3, 10, 17, 24, 31], Month.mondays
      assert_equal Month.new(2011, 1).tuesdays, Month.tuesdays
      assert_equal [4, 11, 18, 25], Month.tuesdays
      assert_equal Month.new(2011, 1).wednesdays, Month.wednesdays
      assert_equal [5, 12, 19, 26], Month.wednesdays
      assert_equal Month.new(2011, 1).thursdays, Month.thursdays
      assert_equal [6, 13, 20, 27], Month.thursdays
      assert_equal Month.new(2011, 1).fridays, Month.fridays
      assert_equal [7, 14, 21, 28], Month.fridays
      assert_equal Month.new(2011, 1).saturdays, Month.saturdays
      assert_equal [1, 8, 15, 22, 29], Month.saturdays
      assert_equal Month.new(2011, 1).sundays, Month.sundays
      assert_equal [2, 9, 16, 23, 30], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 2
      assert_equal Month.new(2011, 2).mondays, Month.mondays
      assert_equal [7, 14, 21, 28], Month.mondays
      assert_equal Month.new(2011, 2).tuesdays, Month.tuesdays
      assert_equal [1, 8, 15, 22], Month.tuesdays
      assert_equal Month.new(2011, 2).wednesdays, Month.wednesdays
      assert_equal [2, 9, 16, 23], Month.wednesdays
      assert_equal Month.new(2011, 2).thursdays, Month.thursdays
      assert_equal [3, 10, 17, 24], Month.thursdays
      assert_equal Month.new(2011, 2).fridays, Month.fridays
      assert_equal [4, 11, 18, 25], Month.fridays
      assert_equal Month.new(2011, 2).saturdays, Month.saturdays
      assert_equal [5, 12, 19, 26], Month.saturdays
      assert_equal Month.new(2011, 2).sundays, Month.sundays
      assert_equal [6, 13, 20, 27], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 3
      assert_equal Month.new(2011, 3).mondays, Month.mondays
      assert_equal [7, 14, 21, 28], Month.mondays
      assert_equal Month.new(2011, 3).tuesdays, Month.tuesdays
      assert_equal [1, 8, 15, 22, 29], Month.tuesdays
      assert_equal Month.new(2011, 3).wednesdays, Month.wednesdays
      assert_equal [2, 9, 16, 23, 30], Month.wednesdays
      assert_equal Month.new(2011, 3).thursdays, Month.thursdays
      assert_equal [3, 10, 17, 24, 31], Month.thursdays
      assert_equal Month.new(2011, 3).fridays, Month.fridays
      assert_equal [4, 11, 18, 25], Month.fridays
      assert_equal Month.new(2011, 3).saturdays, Month.saturdays
      assert_equal [5, 12, 19, 26], Month.saturdays
      assert_equal Month.new(2011, 3).sundays, Month.sundays
      assert_equal [6, 13, 20, 27], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 4
      assert_equal Month.new(2011, 4).mondays, Month.mondays
      assert_equal [4, 11, 18, 25], Month.mondays
      assert_equal Month.new(2011, 4).tuesdays, Month.tuesdays
      assert_equal [5, 12, 19, 26], Month.tuesdays
      assert_equal Month.new(2011, 4).wednesdays, Month.wednesdays
      assert_equal [6, 13, 20, 27], Month.wednesdays
      assert_equal Month.new(2011, 4).thursdays, Month.thursdays
      assert_equal [7, 14, 21, 28], Month.thursdays
      assert_equal Month.new(2011, 4).fridays, Month.fridays
      assert_equal [1, 8, 15, 22, 29], Month.fridays
      assert_equal Month.new(2011, 4).saturdays, Month.saturdays
      assert_equal [2, 9, 16, 23, 30], Month.saturdays
      assert_equal Month.new(2011, 4).sundays, Month.sundays
      assert_equal [3, 10, 17, 24], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 5
      assert_equal Month.new(2011, 5).mondays, Month.mondays
      assert_equal [2, 9, 16, 23, 30], Month.mondays
      assert_equal Month.new(2011, 5).tuesdays, Month.tuesdays
      assert_equal [3, 10, 17, 24, 31], Month.tuesdays
      assert_equal Month.new(2011, 5).wednesdays, Month.wednesdays
      assert_equal [4, 11, 18, 25], Month.wednesdays
      assert_equal Month.new(2011, 5).thursdays, Month.thursdays
      assert_equal [5, 12, 19, 26], Month.thursdays
      assert_equal Month.new(2011, 5).fridays, Month.fridays
      assert_equal [6, 13, 20, 27], Month.fridays
      assert_equal Month.new(2011, 5).saturdays, Month.saturdays
      assert_equal [7, 14, 21, 28], Month.saturdays
      assert_equal Month.new(2011, 5).sundays, Month.sundays
      assert_equal [1, 8, 15, 22, 29], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 6
      assert_equal Month.new(2011, 6).mondays, Month.mondays
      assert_equal [6, 13, 20, 27], Month.mondays
      assert_equal Month.new(2011, 6).tuesdays, Month.tuesdays
      assert_equal [7, 14, 21, 28], Month.tuesdays
      assert_equal Month.new(2011, 6).wednesdays, Month.wednesdays
      assert_equal [1, 8, 15, 22, 29], Month.wednesdays
      assert_equal Month.new(2011, 6).thursdays, Month.thursdays
      assert_equal [2, 9, 16, 23, 30], Month.thursdays
      assert_equal Month.new(2011, 6).fridays, Month.fridays
      assert_equal [3, 10, 17, 24], Month.fridays
      assert_equal Month.new(2011, 6).saturdays, Month.saturdays
      assert_equal [4, 11, 18, 25], Month.saturdays
      assert_equal Month.new(2011, 6).sundays, Month.sundays
      assert_equal [5, 12, 19, 26], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 7
      assert_equal Month.new(2011, 7).mondays, Month.mondays
      assert_equal [4, 11, 18, 25], Month.mondays
      assert_equal Month.new(2011, 7).tuesdays, Month.tuesdays
      assert_equal [5, 12, 19, 26], Month.tuesdays
      assert_equal Month.new(2011, 7).wednesdays, Month.wednesdays
      assert_equal [6, 13, 20, 27], Month.wednesdays
      assert_equal Month.new(2011, 7).thursdays, Month.thursdays
      assert_equal [7, 14, 21, 28], Month.thursdays
      assert_equal Month.new(2011, 7).fridays, Month.fridays
      assert_equal [1, 8, 15, 22, 29], Month.fridays
      assert_equal Month.new(2011, 7).saturdays, Month.saturdays
      assert_equal [2, 9, 16, 23, 30], Month.saturdays
      assert_equal Month.new(2011, 7).sundays, Month.sundays
      assert_equal [3, 10, 17, 24, 31], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 8
      assert_equal Month.new(2011, 8).mondays, Month.mondays
      assert_equal [1, 8, 15, 22, 29], Month.mondays
      assert_equal Month.new(2011, 8).tuesdays, Month.tuesdays
      assert_equal [2, 9, 16, 23, 30], Month.tuesdays
      assert_equal Month.new(2011, 8).wednesdays, Month.wednesdays
      assert_equal [3, 10, 17, 24, 31], Month.wednesdays
      assert_equal Month.new(2011, 8).thursdays, Month.thursdays
      assert_equal [4, 11, 18, 25], Month.thursdays
      assert_equal Month.new(2011, 8).fridays, Month.fridays
      assert_equal [5, 12, 19, 26], Month.fridays
      assert_equal Month.new(2011, 8).saturdays, Month.saturdays
      assert_equal [6, 13, 20, 27], Month.saturdays
      assert_equal Month.new(2011, 8).sundays, Month.sundays
      assert_equal [7, 14, 21, 28], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 9
      assert_equal Month.new(2011, 9).mondays, Month.mondays
      assert_equal [5, 12, 19, 26], Month.mondays
      assert_equal Month.new(2011, 9).tuesdays, Month.tuesdays
      assert_equal [6, 13, 20, 27], Month.tuesdays
      assert_equal Month.new(2011, 9).wednesdays, Month.wednesdays
      assert_equal [7, 14, 21, 28], Month.wednesdays
      assert_equal Month.new(2011, 9).thursdays, Month.thursdays
      assert_equal [1, 8, 15, 22, 29], Month.thursdays
      assert_equal Month.new(2011, 9).fridays, Month.fridays
      assert_equal [2, 9, 16, 23, 30], Month.fridays
      assert_equal Month.new(2011, 9).saturdays, Month.saturdays
      assert_equal [3, 10, 17, 24], Month.saturdays
      assert_equal Month.new(2011, 9).sundays, Month.sundays
      assert_equal [4, 11, 18, 25], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 10
      assert_equal Month.new(2011, 10).mondays, Month.mondays
      assert_equal [3, 10, 17, 24, 31], Month.mondays
      assert_equal Month.new(2011, 10).tuesdays, Month.tuesdays
      assert_equal [4, 11, 18, 25], Month.tuesdays
      assert_equal Month.new(2011, 10).wednesdays, Month.wednesdays
      assert_equal [5, 12, 19, 26], Month.wednesdays
      assert_equal Month.new(2011, 10).thursdays, Month.thursdays
      assert_equal [6, 13, 20, 27], Month.thursdays
      assert_equal Month.new(2011, 10).fridays, Month.fridays
      assert_equal [7, 14, 21, 28], Month.fridays
      assert_equal Month.new(2011, 10).saturdays, Month.saturdays
      assert_equal [1, 8, 15, 22, 29], Month.saturdays
      assert_equal Month.new(2011, 10).sundays, Month.sundays
      assert_equal [2, 9, 16, 23, 30], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 11
      assert_equal Month.new(2011, 11).mondays, Month.mondays
      assert_equal [7, 14, 21, 28], Month.mondays
      assert_equal Month.new(2011, 11).tuesdays, Month.tuesdays
      assert_equal [1, 8, 15, 22, 29], Month.tuesdays
      assert_equal Month.new(2011, 11).wednesdays, Month.wednesdays
      assert_equal [2, 9, 16, 23, 30], Month.wednesdays
      assert_equal Month.new(2011, 11).thursdays, Month.thursdays
      assert_equal [3, 10, 17, 24], Month.thursdays
      assert_equal Month.new(2011, 11).fridays, Month.fridays
      assert_equal [4, 11, 18, 25], Month.fridays
      assert_equal Month.new(2011, 11).saturdays, Month.saturdays
      assert_equal [5, 12, 19, 26], Month.saturdays
      assert_equal Month.new(2011, 11).sundays, Month.sundays
      assert_equal [6, 13, 20, 27], Month.sundays
    end
    if Date.today.year == 2011 && Date.today.month == 12
      assert_equal Month.new(2011, 12).mondays, Month.mondays
      assert_equal [5, 12, 19, 26], Month.mondays
      assert_equal Month.new(2011, 12).tuesdays, Month.tuesdays
      assert_equal [6, 13, 20, 27], Month.tuesdays
      assert_equal Month.new(2011, 12).wednesdays, Month.wednesdays
      assert_equal [7, 14, 21, 28], Month.wednesdays
      assert_equal Month.new(2011, 12).thursdays, Month.thursdays
      assert_equal [1, 8, 15, 22, 29], Month.thursdays
      assert_equal Month.new(2011, 12).fridays, Month.fridays
      assert_equal [2, 9, 16, 23, 30], Month.fridays
      assert_equal Month.new(2011, 12).saturdays, Month.saturdays
      assert_equal [3, 10, 17, 24, 31], Month.saturdays
      assert_equal Month.new(2011, 12).sundays, Month.sundays
      assert_equal [4, 11, 18, 25], Month.sundays
    end
  end
  
end
