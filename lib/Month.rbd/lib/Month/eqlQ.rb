# Month/eqlQ
# Month#eql?

# 20120120, 21
# 0.9.2

# Changes since 0.9: 
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. /def ==/def eql?/, mostly so as I could have a sensible filename!  
# 4. Merged ==() and eql?().  

class Month
  
  def eql?(other_month)
    self.year == other_month.year && self.month == other_month.month
  end
  alias_method :==, :eql?
  
end
