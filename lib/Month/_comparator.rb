# Month/_comparator.rb
# Month#<=>

require 'Month/initialize'

class Month
  
  include Comparable
  
  def <=>(other_month)
    if year == other_month.year
      month <=> other_month.month
    else
      year <=> other_month.year
    end
  end
  
end
