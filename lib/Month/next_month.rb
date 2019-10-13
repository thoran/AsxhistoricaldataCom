# Month/next_month.rb
# Month#next_month

require 'Month/initialize'
require 'Month/self.next_month'

class Month
  
  def next_month
    Month.next_month(year, month)
  end
  
end
