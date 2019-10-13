# Month/succ_month.rb
# Month#succ_month

require 'Month/initialize'
require 'Month/self.succ_month'

class Month
  
  def succ_month
    Month.succ_month(year, month)
  end
  
end
