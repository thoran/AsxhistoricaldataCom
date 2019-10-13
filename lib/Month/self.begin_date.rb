# Month/self.begin_date.rb
# Month#self.begin_date

require 'date'

class Month
  class << self
    
    def begin_date(*args)
      year, month = (
        case args.size
        when 0; [Date.today.year, Date.today.month]
        when 1; [Date.today.year, args[0]]
        when 2; [args[0], args[1]]
        else; raise ArgumentError, "too many arguments (#{args.size} for 0, 1, or 2)"
        end
      )
      fail unless (1..12).include?(month)
      Date.new(year, month, 1)
    end
    
  end
end
