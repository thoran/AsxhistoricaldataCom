# Month/self.days.rb
# Month.days

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
