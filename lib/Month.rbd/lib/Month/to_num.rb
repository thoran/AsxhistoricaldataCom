# Month/to_num
# Month#to_num

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_reader instead of an instance variable.  
# 4. + require 'Month/self.to_num'.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

require 'Month/initialize'
require 'Month/self.to_num'

class Month
  
  def to_num
    Month.to_num(month)
  end
  
end
