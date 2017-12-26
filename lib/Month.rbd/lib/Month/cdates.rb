# Month/cdates
# Month#cdates

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
# 6. Version number bumpo to 0.9.2.  

require 'Month/initialize'
require 'Month/self.cdates'

class Month
  
  def cdates(day = nil)
    Month.cdates(year, month, :day => day)
  end
  
end
