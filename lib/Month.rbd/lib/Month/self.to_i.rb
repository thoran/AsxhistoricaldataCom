# Month/self.to_i
# Month.to_i

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

require 'date'
require 'Month/Constants'

class Month
  class << self
    
    alias_method :to_i, :to_num
    
  end
end
