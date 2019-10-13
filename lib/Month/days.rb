# Month/days.rb
# Month#days

require 'Month/initialize'
require 'Month/self.days'

class Month
  
  def days
    Month.days(year, month)
  end
  
end
