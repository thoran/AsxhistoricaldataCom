# Month/self.finish.rb
# Month.finish

require 'Month/self.finish_date'

class Month
  class << self
    
    alias_method :finish, :finish_date
    
  end
end
