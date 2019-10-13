# Month/to_month
# Month#to_month

require 'Month.rbd/Month'

class Date
  
  def to_month
    Month.new(self.year, self.month)
  end
  
end
