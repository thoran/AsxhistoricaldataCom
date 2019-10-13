# Month/self.next_month.rb
# Month.next_month

require 'Month/self.next'

class Month
  class << self
    
    alias_method :next_month, :next
    
  end
end
