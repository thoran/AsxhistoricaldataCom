# Month/self.start.rb
# Month.start

require 'Month/self.start_date'

class Month
  class << self
    
    alias_method :start, :start_date
    
  end
end
