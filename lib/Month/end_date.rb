# Month/end_date.rb
# Month#end_date

require 'Month/initialize'
require 'Month/self.end_date'

class Month
  
  def end_date
    Month.end_date(year, month)
  end
  
end
