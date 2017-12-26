# Month/self.to_num
# Month.to_num

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

require 'date'
require 'Month/Constants'

class Month
  class << self
    
    def to_num(month = Date.today.month)
      if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); i + 1
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); i + 1
      elsif i = MONTH_NUMBERS.to_a.index(month); i + 1
      elsif i = MONTH_NUMBERS_AS_STRINGS.to_a.index(month.to_s); i + 1
      else; nil
      end
    end
    
  end
end
