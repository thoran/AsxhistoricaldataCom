# Month/self.end_date.rb
# Month.end_date

require 'date'
require 'Month/self.days'

class Month
  class << self
    
    def end_date(*args)
      year, month = (
        case args.size
        when 0; [Date.today.year, Date.today.month]
        when 1; [Date.today.year, args[0]]
        when 2; [args[0], args[1]]
        else; raise ArgumentError, "too many arguments (#{args.size} for 0, 1, or 2)"
        end
      )
      fail unless (1..12).include?(month)
      Date.new(year, month, self.days(year, month))
    end
    
  end
end
