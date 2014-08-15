class Type
  @@types = []


  def Type.all
    @@types
  end

  def save
    @@types << self
  end

  def Type.clear
    @@types =[]
  end

  def initialize(type)
    @type = type
  end

  def type
    @type
  end

end
