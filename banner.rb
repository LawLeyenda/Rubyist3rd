class Banner
  attr_accessor :text
  
  def initialize(text)
    @text = text
  end
  
  def to_s
    @text
  end
  
  def +@
    @text.upcase
  end


  def -@
    @text.downcase
  end
  
end

banner = Banner.new("Sean Gelb")
puts banner.text
puts +banner
puts -banner