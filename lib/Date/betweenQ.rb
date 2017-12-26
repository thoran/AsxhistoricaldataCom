# Date/betweenQ
# Date#between?

# 20120412
# 0.0.0

# Description: This determines whether a date is between two other dates inclusively, with no particular order to the to arguments.  

class Date
  
  def between?(date_1, date_2)
    (self <= date_1 && self >= date_2) || (self >= date_1 && self <= date_2)
  end
  
end
