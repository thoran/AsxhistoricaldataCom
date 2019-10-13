# Month/self.cdate.rb
# Month.cdate

require 'date'
require 'Month/self.cdates'

class Month
  class << self
    
    def cdate(which_day, day, *args)
      year, month = (
        case args.size
        when 0; [Date.today.year, Date.today.month]
        when 1; [Date.today.year, args[0]]
        when 2; [args[0], args[1]]
        else; raise ArgumentError, "too many arguments (#{args.size + 2} for 2, 3, or 4)"
        end
      )
      fail unless (1..12).include?(month)
      all = self.cdates(year, month, :day => day)
      case which_day.to_s.downcase
      when 'first', '1st', '1'; all[0]
      when 'second', '2nd', '2'; all[1]
      when 'third', '3rd', '3'; all[2]
      when 'fourth', '4th', '4'; all[3]
      when 'fifth', '5th', '5'; all[4]
      when 'last', 'ultimate'; all[all.size - 1]
      when 'second last', '2nd last', 'penultimate'; all[all.size - 2]
      when 'third last', '3rd last'; all[all.size - 3]
      when 'fourth last', '4th last'; all[all.size - 4]
      else; nil
      end
    end
    
  end
end
