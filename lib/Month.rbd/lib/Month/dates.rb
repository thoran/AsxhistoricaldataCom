# Month/dates
# Month#dates

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_readers instead of instance variables.  
# 4. Argument day is now optional.  
# 0/1
# 5. Version number bump to 0.9.1. 
# 1/2
# 6. Version number bump to 0.9.2.  

require 'Month/initialize'
require 'Month/self.dates'

class Month
  
  def dates(day = nil)
    Month.dates(year, month, :day => day)
  end
  
end
