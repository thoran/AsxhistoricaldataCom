# Month/self.last_month.rb
# Month.last_month

require 'Month/self.prev'

class Month
  class << self
    
    alias_method :last_month, :prev
    
  end
end
