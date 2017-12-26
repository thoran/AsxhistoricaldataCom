# Month/succ_month
# Month#succ_month

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

require 'Month/initialize'
require 'Month/self.succ_month'

class Month
  
  def succ_month
    Month.succ_month(year, month)
  end
  
end
