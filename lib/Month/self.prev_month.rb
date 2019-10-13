# Month/self.prev_month.rb
# Month.prev_month

require 'Month/self.prev'

class Month
  class << self
    
    alias_method :prev_month, :prev
    
  end
end
