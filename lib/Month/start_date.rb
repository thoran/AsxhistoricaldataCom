# Month/start_date.rb
# Month#start_date

require 'Month/initialize'
require 'Month/self.start_date'

class Month
  
  def start_date
    Month.start_date(year, month)
  end
  
end
