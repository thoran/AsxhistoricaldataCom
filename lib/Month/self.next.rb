# Month/self.next.rb
# Month.next

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def next(*args)
      year, month = (
        case args.size
        when 0; [Date.today.year, Date.today.month]
        when 1; [Date.today.year, args[0]]
        when 2; [args[0], args[1]]
        else; raise ArgumentError, "too many arguments (#{args.size} for 0, 1, or 2)"
        end
      )
      fail unless (1..12).include?(month)
      if month == 12
        Month.new(year + 1, 1)
      else
        Month.new(year, month + 1)
      end
    end
    
  end
end
