# Month/self.method_missing.rb
# Month.self

require 'Month/self.of'

class Month
  class << self
    
    def method_missing(method_name, *args, &block)
      if month_object = self.of(method_name, *args, &block)
        month_object
      elsif days = Month.new.send(method_name, *args, &block)
        days
      else
        super(method_name, *args, &block)
      end
    end
    
  end
end
