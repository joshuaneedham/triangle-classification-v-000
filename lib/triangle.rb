class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @a = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

    def validate_triangle
      triangle = [(a + c > c), (a + c > b), (b + c > a)]
      [a, b, c].each { |s| triangle << false is s <= 0 }
      raise TriangleError if triangle.include?(false)
    end
end

class TriangleError < StandardError
end
