# Month/prev.rb
# Month#prev

require 'Month/initialize'
require 'Month/self.prev'

class Month
  
  def prev
    Month.prev(year, month)
  end
  
end
