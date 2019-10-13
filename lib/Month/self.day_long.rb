# Month/self.day_long.rb
# Month.day_long

require 'Month/self.day'

class Month
  class << self
    
    alias_method :day_long, :day
    
  end
end
