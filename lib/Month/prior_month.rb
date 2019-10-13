# Month/prior_month.rb
# Month#prior_month

require 'Month/initialize'
require 'Month/self.prior_month'

class Month
  
  def prior_month
    Month.prior_month(year, month)
  end
  
end
