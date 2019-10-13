# Month/self.end_of_month.rb
# Month#self.end_of_month

require 'Month/self.end_date'

class Month
  class << self
    
    alias_method :end_of_month, :end_date
    
  end
end
