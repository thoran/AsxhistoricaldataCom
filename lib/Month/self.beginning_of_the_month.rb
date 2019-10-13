# Month/self.beginning_of_month.rb
# Month#self.beginning_of_month

require 'Month/self.beginning'

class Month
  class << self
    
    alias_method :beginning_of_the_month, :beginning
    
  end
end
