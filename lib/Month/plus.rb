# Month/plus.rb
# Month#plus

require 'Month/initialize'

class Month
  
  def plus(added_months)
    added_years, remaining_months = added_months.divmod(12)
    overflow_year, month = (self.month + remaining_months).divmod(12)
    year = self.year + added_years + overflow_year
    Month.new(year, month)
  end
  alias_method :+, :plus
  
end
