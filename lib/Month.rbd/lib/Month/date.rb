# Month/date
# Month#date

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. 
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

require 'Month/initialize'
require 'Month/self.date'

class Month
  
  def date(which_day, day)
    Month.date(which_day, day, year, month)
  end
  
end