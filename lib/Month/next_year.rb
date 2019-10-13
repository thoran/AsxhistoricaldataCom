# Month/next_year.rb
# Month#next_year

require 'Month/Constants'
require 'Month/initialize'

class Month

  def next_year
    Month.new(self.year + 1, self.month)
  end

end
