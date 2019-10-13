# Month/self.finish_date.rb
# Month.finish_date

require 'Month/self.end_date'

class Month
  class << self
    
    alias_method :finish_date, :end_date
    
  end
end
