# Month/dates.rb
# Month#dates

require 'Month/initialize'
require 'Month/self.dates'

class Month
  
  def dates(day = nil)
    Month.dates(year, month, :day => day)
  end
  
end
