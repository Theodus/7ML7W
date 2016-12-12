
function concatenate(a1, a2)
  local a = {}
  for _, v in pairs(a1) do
    a[#a + 1] = v
  end
  for _, v in pairs(a2) do
    a[#a + 1] = v
  end
  return a
end


a1, a2, a3 = {1, 2, 3}, {4, 5, 6}, {1, 2, 3, 4, 5, 6}

for k, v in pairs(concatenate(a1, a2)) do
  assert(v == a3[k])
end
