# Month/beginning_of_the_month
# Month#beginning_of_the_month

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. Using attr_readers instead of instance variables.  
# 0/1
# 4. /(month, year)/(year, month)/.  
# 5. /require 'Month/self.beginning_of_month'/require 'Month/self.beginning_of_the_month'/.  
# 1/2
# 6. Version number bump to 0.9.2.  

require 'Month/initialize'
require 'Month/self.beginning_of_the_month'

class Month
  
  def beginning_of_the_month
    Month.beginning_of_the_month(year, month)
  end
  
end
