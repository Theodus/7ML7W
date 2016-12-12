
function ends_in_3(num)
  return string.sub(tostring(num), -1, -1) == "3"
end

assert(ends_in_3(123))
assert(not ends_in_3(321))

function is_prime(num)
  for n = 2, num - 1 do
    if num % n == 0 then
      return false
    end
  end
  return true
end

assert(is_prime(7))
assert(not is_prime(10))

n = 10
count = 0
print('first ' .. n .. ' prime numbers ending in 3:')
i = 0
while count < n do
  i = i + 1
  if ends_in_3(i) and is_prime(i) then
    print(i)
    count = count + 1
  end
end
