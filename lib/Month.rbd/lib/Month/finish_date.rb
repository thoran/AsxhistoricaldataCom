# Month/finish_date
# Month#finish_date

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. Using attr_readers instead of instance variables.  
# 0/1
# 4. Version number bump to 0.9.1.  
# 1/2
# 5. Version number bump to 0.9.2.  

require 'Month/initialize'
require 'Month/self.finish_date'

class Month
  
  def finish_date
    Month.finish_date(year, month)
  end
  
end