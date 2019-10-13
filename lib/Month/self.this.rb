# Month/self.this.rb
# Month.this

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def this
      Month.new(Date.today.month)
    end
    
  end
end
