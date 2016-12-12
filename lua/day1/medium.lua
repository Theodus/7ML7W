
function for_loop(a, b, f)
  i = a
  while i <= b do
    f(i)
    i = i + 1
  end
end

for_loop(3, 7, function(n) print(n) end)
