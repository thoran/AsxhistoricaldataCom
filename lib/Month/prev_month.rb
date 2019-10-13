# Month/prev_month.rb
# Month#prev_month

require 'Month/initialize'
require 'Month/self.prev_month'

class Month
  
  def prev_month
    Month.prev_month(year, month)
  end
  
end
