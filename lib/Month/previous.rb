# Month/previous.rb
# Month#previous

require 'Month/initialize'
require 'Month/self.previous'

class Month
  
  def previous
    Month.previous(year, month)
  end
  
end
