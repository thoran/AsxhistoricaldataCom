# Month/hash
# Month#hash

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Added, so as to make Francis Hwang's version 0.1.2 of Month test suite pass.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

require 'Month/initialize'

class Month
  
  def hash
    "#{year}#{month}".to_i
  end
  
end
