# Month/self.days_in_the_month.rb
# Month.days_in_the_month

require 'Month/self.days'

class Month
  class << self
    
    alias_method :days_in_the_month, :days
    
  end
end
