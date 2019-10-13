# Month/date.rb
# Month#date

require 'Month/initialize'
require 'Month/self.date'

class Month
  
  def date(which_day, day)
    Month.date(which_day, day, year, month)
  end
  
end
