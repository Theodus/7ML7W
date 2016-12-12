
function reduce(max, init, f)
  acc = function(m, i, a, f)
    if i > max then
      return a
    end
    return acc(m, i+1, f(a, i), f)
  end
  return acc(max, 1, init, f)
end

function add(previous, next)
  return previous + next
end

assert(reduce(5, 0, add), 15)

function factorial(n)
  return reduce(n, 1, function(p, n) return p * n end)
end

assert(factorial(5), 120)

n = 100
print('factorial(' .. n .. ') = ' .. factorial(n))
