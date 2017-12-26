# Month/self.days
# Month.days

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/Constants'/.  
# 3. + require 'date'.  
# 0/1
# 4. Version number bump to 0.9.1.  
# 1/2
# 5. Version number bump to 0.9.2.  

require 'date'
require 'Month/Constants'
require 'Month/to_num'

class Month
  class << self
    
    def days(*args)
      year, month = (
        case args.size
        when 0; [Date.today.year, Date.today.month]
        when 1; [Date.today.year, args[0]]
        when 2; [args[0], args[1]]
        else; raise ArgumentError, "too many arguments (#{args.size} for 0, 1, or 2)"
        end
      )
      if i = to_num(month)
        case e = MONTH_DAYS[i - 1]
        when Fixnum; e
        else; e.call(year)
        end
      else
        nil
      end
    end
    
  end
end
