# Date/business_dayQ
# Date#business_day?

# 20121007
# 0.0.0

require 'Date/self.business_wdays'

class Date
  
  def business_day?
    Date.business_wdays.include?(self.wday)
  end
  
end
