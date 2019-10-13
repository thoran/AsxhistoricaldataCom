# Month/self.end.rb
# Month.end

require 'Month/self.end_date'

class Month
  class << self
    
    alias_method :end, :end_date
    
  end
end
