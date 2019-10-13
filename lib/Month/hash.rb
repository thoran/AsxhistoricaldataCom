# Month/hash.rb
# Month#hash

require 'Month/initialize'

class Month
  
  def hash
    "#{year}#{month}".to_i
  end
  
end
