# Month/next.rb
# Month#next

require 'Month/initialize'
require 'Month/self.next'

class Month
  
  def next
    Month.next(year, month)
  end
  
end
