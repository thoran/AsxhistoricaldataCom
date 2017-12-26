# Month/to_long
# Month#to_long

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_reader instead of an instance variable.  
# 0/1
# 4. Version number bump to 0.9.1.  
# 1/2
# 5. Version number bump to 0.9.2.  


require 'Month/initialize'
require 'Month/self.to_long'

class Month
  
  def to_long
    Month.to_long(month)
  end
  
end
