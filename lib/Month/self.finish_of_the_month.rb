# Month/self.finish_of_the_month.rb
# Month.finish_of_the_month

require 'Month/self.finish_date'

class Month
  class << self
    
    alias_method :finish_of_the_month, :finish_date
    
  end
end
