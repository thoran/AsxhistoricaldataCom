# Month/self.succ_month.rb
# Month.succ_month

require 'Month/self.next'

class Month
  class << self
    
    alias_method :succ_month, :next
    
  end
end
