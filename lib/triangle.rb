class Triangle
  attr_accessor :kind

  def initialize(a, b, c)
    if a == b == c
      @kine = :equilateral
    end
  end
end
