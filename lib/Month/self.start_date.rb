# Month/self.start_date.rb
# Month.start_date

require 'Month/self.begin_date'

class Month
  class << self
    
    alias_method :start_date, :begin_date
    
  end
end
