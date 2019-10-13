# Month/to_s.rb
# Month#to_s

require 'Month/initialize'
require 'Month/to_long'
require 'Month/to_short'

class Month
  
  def to_s(month_name_length = :long)
    case month_name_length.to_sym
    when :long; "#{to_long} #{year}"
    when :short, 'short'; "#{to_short} #{year}"
    when :iso, :iso_8601; "#{year}-" + "%02d" % month
    end
  end
  
end
