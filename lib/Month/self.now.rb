# Month/self.now.rb
# Month.now

require 'Month/self.today'

class Month
  class << self
    
    alias_method :now, :today
    
  end
end
