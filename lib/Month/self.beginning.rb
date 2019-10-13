# Month/self.beginning.rb
# Month.beginning

require 'Month/self.begin_date'

class Month
  class << self
    
    alias_method :beginning, :begin_date
    
  end
end
