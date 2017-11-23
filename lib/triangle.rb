class Triangle
  # write code here

  def kind(a, b, c)

    # s = (a + b + c) / 2.0
    #
    # ok = (s - a) * (s - b) * (s - c)


    if a == b && b == c then
      :equilateral
    elsif a == b || a == c || b == c then
      :isosceles
    else
      :scalene
    end
  end
end
