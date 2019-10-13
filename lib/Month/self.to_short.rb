# Month/self.to_short.rb
# Month.to_short

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
