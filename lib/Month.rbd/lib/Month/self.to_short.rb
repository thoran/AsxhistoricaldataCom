# Month/self.to_short
# Month.to_short

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/Constants'.  
# 3. + require 'date'.  
# 0/1
# 4. Version number bump to 0.9.1.  
# 1/2
# 5. Version number bump to 0.9.2.  

require 'date'
require 'Month/Constants'

class Month
  class << self
    
    def to_short(month = Date.today.month)
      if i = MONTH_NAMES_SHORT.index(month.to_s.capitalize); MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NAMES_LONG.index(month.to_s.capitalize); MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NUMBERS.to_a.index(month); MONTH_NAMES_SHORT[i]
      elsif i = MONTH_NUMBERS_AS_STRINGS.to_a.index(month.to_s); MONTH_NAMES_SHORT[i]
      else; nil
      end
    end
    
  end
end
