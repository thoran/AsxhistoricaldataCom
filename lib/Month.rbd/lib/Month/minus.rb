# Month/minus
# Month#minus

# 2011
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. + require 'Month/initialize'.  
# 3. Using attr_readers instead of instance variables.  
# 4. Reversed the argument order for Month.new.  
# 0/1
# 5. Version number bump to 0.9.1.  
# 1/2
# 6. /def -/def minus/, with -() now aliased.  
# 7. /_minus.rb/minus.rb/.  

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
