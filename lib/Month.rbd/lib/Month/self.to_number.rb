# Month/self.to_number
# Month.to_number

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month/require 'Month/Constants'/.  
# 3. + require 'date'.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

require 'Month/self.to_num'

class Month
  class << self
    
    alias_method :to_number, :to_num
    
  end
end