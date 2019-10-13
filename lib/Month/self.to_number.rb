# Month/self.to_number.rb
# Month.to_number

require 'Month/self.to_num'

class Month
  class << self
    
    alias_method :to_number, :to_num
    
  end
end
