# Month/succ.rb
# Month#succ

require 'Month/initialize'
require 'Month/self.succ'

class Month
  
  def succ
    Month.succ(year, month)
  end
  
end
