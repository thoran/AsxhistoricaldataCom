# Month/plus
# Month#plus

# 20120120
# 0.9.2

# Changes since 0.8: 
# 1. Version number bump to 0.9.0.  
# 2. /require 'Month'/require 'Month/initialize'/.  
# 3. Using attr_readers instead of instance variables.  
# 4. Reversed the argument order for Month.new.  
# 0/1
# 5. Version number bump to 0.9.1.  
# 1/2
# 6. /def -/def plus/, with -() now aliased.  
# 7. /_plus.rb/plus.rb/.  

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
