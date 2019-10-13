# Month/cdate.rb
# Month#cdate

require 'Month/initialize'
require 'Month/self.cdate'

class Month
  
  def cdate(which_day, day)
    Month.cdate(which_day, day, year, month)
  end
  
end
