# Month/self.end_of_the_month.rb
# Month.end_of_the_month

require 'Month/self.end_date'

class Month
  class << self
    
    alias_method :end_of_the_month, :end_date
    
  end
end
