# Month/self.succ.rb
# Month.succ

require 'Month/self.next'

class Month
  class << self
    
    alias_method :succ, :next
    
  end
end
