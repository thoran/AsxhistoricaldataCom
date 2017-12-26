# Month/self.day_shortest
# Month.day_shortest

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/Constants'/.  
# 0/1
# 3. Version number bump to 0.9.1.  
# 1/2
# 4. Version number bump to 0.9.2.  

require 'date'
require 'Month/Constants'

class Month
  class << self
    
    def day_shortest(date, month = Date.today.month, year = Date.today.year)
      date, month, year = date.to_i, self.to_num(month), year.to_i
      if MONTH_DAY_NUMBERS.to_a.member?(date) && MONTH_NUMBERS.to_a.member?(month) && (year.to_s =~ /\d/)
        WEEK_DAY_NAMES_SHORTEST[Date.new(year, month, date).wday]
      else
        nil
      end
    end
    
  end
end
