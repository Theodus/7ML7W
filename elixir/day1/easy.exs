alias :math, as: Math

hypotenuse = fn(a, b) -> Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2)) end

test = fn(a, n) -> unless a, do: raise "fail: #{n}" end

test.(hypotenuse.(3, 4) == 5, "hypotenuse")
