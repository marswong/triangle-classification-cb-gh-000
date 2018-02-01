class Triangle
  attr_accessor :kind

  def initialize(a, b, c)
    if a == b == c
      @kind = :equilateral
    elsif a == b || b == c
      @kind = :isosceles
    elsif a > 0 && b > 0 && c > 0 &&
          ((a + b > c && a - b < c) || (a + c > b && a - c < b) || (b + c > a || b - c < a))
      @kind = :scalene
    end
  end
end

class TriangleError

end