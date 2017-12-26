# Month/self.last_month
# Month.last_month

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'date'.  
# 3. + require 'Month/initialize'.  
# 4. Reversed the argument order for Month.new.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

require 'Month/self.prev'

class Month
  class << self
    
    alias_method :last_month, :prev
    
  end
end
