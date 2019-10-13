# Month/self.successor.rb
# Month.successor

require 'Month/self.next'

class Month
  class << self
    
    alias_method :successor, :next
    
  end
end
