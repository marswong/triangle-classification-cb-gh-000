class Triangle
  attr_accessor :kind

  def initialize(a, b, c)
    if a == b == c
      @kind = :equilateral
    elsif a == b || b == c
      @kind = :isosceles      
    end
  end
end
