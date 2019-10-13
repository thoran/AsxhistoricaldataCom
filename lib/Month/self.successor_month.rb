# Month/self.successor_month.rb
# Month.successor_month

require 'Month/self.next'

class Month
  class << self
    
    alias_method :successor_month, :next
    
  end
end
