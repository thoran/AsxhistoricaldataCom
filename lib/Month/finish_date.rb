# Month/finish_date.rb
# Month#finish_date

require 'Month/initialize'
require 'Month/self.finish_date'

class Month
  
  def finish_date
    Month.finish_date(year, month)
  end
  
end
