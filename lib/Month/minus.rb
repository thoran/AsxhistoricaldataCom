# Month/minus.rb
# Month#minus

require 'Month/initialize'

class Month
  
  def minus(subtracted_months)
    subtracted_years, remaining_months = subtracted_months.divmod(12)
    preliminary_year = self.year - subtracted_years
    if self.month > remaining_months
      year, month = preliminary_year, self.month - remaining_months
    else
      year, month = preliminary_year - 1, 12 - (remaining_months - self.month)
    end
    Month.new(year, month)
  end
  alias_method :-, :minus
  
end
