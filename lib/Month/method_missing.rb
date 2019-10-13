# Month/method_missing.rb
# Month#method_missing

require 'Month/self.dates'

class Month
  
  def method_missing(method_name, *args, &block)
    case method_name.to_s
    when /^((m|M)o)|((m|M)on)(day|days)*$/; Month.dates(year, month, :day => 'Monday')
    when /^((t|T)u)|((t|T)ue)(sday|sdays)*$/; Month.dates(year, month, :day => 'Tuesday')
    when /^((w|W)e)|((w|W)ed)(nesday|nesdays)*$/; Month.dates(year, month, :day => 'Wednesday')
    when /^((t|T)h)|((t|T)hu)(rsday|rsdays)*$/; Month.dates(year, month, :day => 'Thursday')
    when /^((f|F)r)|((f|F)ri)(day|days)*$/; Month.dates(year, month, :day => 'Friday')
    when /^((s|S)a)|((s|S)at)(urday|urdays)*$/; Month.dates(year, month, :day => 'Saturday')
    when /^((s|S)u)|((s|S)un)(day|days)*$/; Month.dates(year, month, :day => 'Sunday')
    else; super(method_name, *args, &block)
    end
  end
  
end
