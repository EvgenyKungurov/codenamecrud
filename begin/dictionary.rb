class Dictionary
  attr_accessor :keywords
  def initialize
    @keywords = keywords = {}
  end
  
  def add(kw, info)
    @keywords[kw] = info
  end
  
  def entries
    @keywords
  end
  
  def keywords
    @keywords.keys
  end  
  
  def include? (kw)
    @keywords[kw]
  end
  
  
end
