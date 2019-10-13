# Month/eqlQ.rb
# Month#eql?

class Month
  
  def eql?(other_month)
    self.year == other_month.year && self.month == other_month.month
  end
  alias_method :==, :eql?
  
end
