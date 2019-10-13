# Month/previous_month.rb
# Month#previous_month

require 'Month/initialize'
require 'Month/self.previous_month'

class Month
  
  def previous_month
    Month.previous_month(year, month)
  end
  
end
