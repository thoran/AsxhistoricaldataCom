# Month/self.beginning_of_month
# Month#self.beginning_of_month

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

require 'Month/self.beginning'

class Month
  class << self
    
    alias_method :beginning_of_the_month, :beginning
    
  end
end
