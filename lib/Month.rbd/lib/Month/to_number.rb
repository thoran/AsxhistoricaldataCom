# Month/to_number
# Month#to_number

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_reader instead of an instance variable.  
# 4. + require 'Month/self.to_number'.  
# 0/1
# 5. Version number bump to 0.9.1.  
# 1/2
# 6. Version number bump to 0.9.2.  

require 'Month/initialize'
require 'Month/self.to_number'

class Month
  
  def to_number
    Month.to_number(month)
  end
  
end
