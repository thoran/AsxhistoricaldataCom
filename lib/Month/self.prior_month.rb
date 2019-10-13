# Month/self.prior_month.rb
# Month.prior_month

require 'Month/self.prev'

class Month
  class << self
    
    alias_method :prior_month, :prev
    
  end
end
