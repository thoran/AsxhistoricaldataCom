# Month/self.days_in_month
# Month.days_in_month

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

require 'Month/self.days'

class Month
  class << self
    
    alias_method :days_in_month, :days
    
  end
end
