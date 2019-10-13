# Month/self.previous.rb
# Month.previous

require 'Month/self.prev'

class Month
  class << self
    
    alias_method :previous, :prev
    
  end
end
