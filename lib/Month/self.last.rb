# Month/self.last.rb
# Month.last

require 'Month/self.last_month'

class Month
  class << self
    
    alias_method :last, :last_month
    
  end
end
