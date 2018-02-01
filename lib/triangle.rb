class Triangle
  attr_accessor :kind

  def initialize(a, b, c)
    if a == b && b == c
      @kind = :equilateral
    elsif a == b || b == c || a == c
      @kind = :isosceles
    elsif a > 0 && b > 0 && c > 0 &&
          ((a + b > c && a - b < c) || (a + c > b && a - c < b) || (b + c > a || b - c < a))
      @kind = :scalene
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
  def message
    "The sides combination is illegal!"
  end
end
