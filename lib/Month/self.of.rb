# Month/self.of.rb
# Month.of

require 'date'
require 'Month/initialize'

class Month
  class << self
    
    def of(*args)
      year, month = (
        case args.size
        # when 0; [Date.today.year, Date.today.month]
        when 1; [Date.today.year, args[0]]
        when 2; [args[0], args[1]]
        else; raise ArgumentError, "too many arguments (#{args.size} for 0, 1, or 2)"
        end
      )
      case month.to_s
      when /^(J|j)an(uary)*$/; new(year, 1)
      when /^(F|f)eb(ruary)*$/; new(year, 2)
      when /^(M|m)ar(ch)*$/; new(year, 3)
      when /^(A|a)pr(il)*$/; new(year, 4)
      when /^(M|m)ay$/; new(year, 5)
      when /^(J|j)un(e)*$/; new(year, 6)
      when /^(J|j)ul(y)*$/; new(year, 7)
      when /^(A|a)ug(ust)*$/; new(year, 8)
      when /^(S|s)ep(tember)*$/; new(year, 9)
      when /^(O|o)ct(ober)*$/; new(year, 10)
      when /^(N|n)ov(ember)*$/; new(year, 11)
      when /^(D|d)ec(ember)*$/; new(year, 12)
      else; nil
      end
    end
    
  end
end
