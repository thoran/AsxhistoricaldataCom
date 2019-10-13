# Month/successor_month.rb
# Month#successor_month

require 'Month/initialize'
require 'Month/self.successor_month'

class Month
  
  def successor_month
    Month.successor_month(year, month)
  end
  
end
