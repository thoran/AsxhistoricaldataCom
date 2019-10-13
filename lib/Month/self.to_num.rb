# Month/self.to_num.rb
# Month.to_num

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
