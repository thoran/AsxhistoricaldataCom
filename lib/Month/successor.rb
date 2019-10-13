# Month/successor.rb
# Month#successor

require 'Month/initialize'
require 'Month/self.successor'

class Month
  
  def successor
    Month.successor(year, month)
  end
  
end
