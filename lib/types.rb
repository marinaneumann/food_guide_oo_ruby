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
    @food = []
  end

  def type
    @type
  end

  def food
    @food
  end

end
