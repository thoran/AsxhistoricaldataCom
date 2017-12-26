# Month.this

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'date'.  
# 3. + require 'Month/initialize'.  
# 0/1
# 4. Version number bump to 0.9.1.  
# 1/2
# 5. Version number bump to 0.9.2.  

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def this
      Month.new(Date.today.month)
    end
    
  end
end
