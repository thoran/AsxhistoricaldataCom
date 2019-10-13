# Month/self.to_i.rb
# Month.to_i

require 'date'
require 'Month/Constants'

class Month
  class << self
    
    alias_method :to_i, :to_num
    
  end
end
