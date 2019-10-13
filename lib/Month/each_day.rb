# Month/each_day.rb
# Month#each_day 

require 'Month/initialize'
require 'Month/days'

class Month
  
  def each_day
    (1..days).each{|day| yield day}
  end
  
end
