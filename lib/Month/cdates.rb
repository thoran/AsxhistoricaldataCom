# Month/cdates.rb
# Month#cdates

require 'Month/initialize'
require 'Month/self.cdates'

class Month
  
  def cdates(day = nil)
    Month.cdates(year, month, :day => day)
  end
  
end
