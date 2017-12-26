# Month/self.method_missing

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

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
