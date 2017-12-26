# Month/start
# Month#start

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month/require 'Month/initialize'/.  
# 0/1
# 3. Version number bump to 0.9.1.  
# 1/2
# 4. Version number bump to 0.9.2.  

require 'Month/initialize'
require 'Month/self.start'

class Month
  
  def start
    Month.start(year, month)
  end
  
end
