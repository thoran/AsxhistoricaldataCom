# Month/self.previous_month.rb
# Month.previous_month

require 'Month/self.previous_month'

class Month
  class << self
    
    alias_method :previous_month, :prev
    
  end
end
