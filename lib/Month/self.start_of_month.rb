# Month/self.start_of_month.rb
# Month.start_of_month

require 'Month/self.start_date'

class Month
  class << self
    
    alias_method :start_of_month, :start_date
    
  end
end
