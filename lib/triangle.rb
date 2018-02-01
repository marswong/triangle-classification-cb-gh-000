class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    a = @a
    b = @b
    c = @c

    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    elsif a > 0 && b > 0 && c > 0 &&
          ((a + b > c && a - b < c) || (a + c > b && a - c < b) || (b + c > a || b - c < a))
      :scalene
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError
end
