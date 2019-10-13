# Month/self.prior.rb
# Month.prior

require 'Month/self.prev'

class Month
  class << self
    
    alias_method :prior, :prev
    
  end
end
