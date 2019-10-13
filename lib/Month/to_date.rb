# Month/to_date.rb
# Month#to_date

require 'date'
require 'Month/initialize'

class Month
  
  def to_date
    Date.new(year, month, 1)
  end
  
end
