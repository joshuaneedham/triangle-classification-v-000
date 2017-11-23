class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @a = c
  end

  def kind(a, b, c)

    s = (a + b + c) / 2.0

    ok = (s - a) * (s - b) * (s - c)

    if a <= 0 || b <= 0 || c <= 0 || ok <= 0 then
      raise TriangleError
    end

    if a == b && b == c then
      :equilateral
    elsif a == b || a == c || b == c then
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
