# Month/last_year.rb
# Month#last_year

require 'Month/Constants'
require 'Month/initialize'

class Month

  def last_year
    Month.new(self.year - 1, self.month)
  end

end
