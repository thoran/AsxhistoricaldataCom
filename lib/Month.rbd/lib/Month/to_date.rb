# Month/to_date
# Month#to_date

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

require 'date'
require 'Month/initialize'

class Month
  
  def to_date
    Date.new(year, month, 1)
  end
  
end
