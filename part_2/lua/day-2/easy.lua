function concatenate(a1, a2)
  local ary = {}
  for i = 1, #a1 do
    ary[i] = a1[i]
  end

  for i = 1, #a2 do
    ary[i + #a1] = a2[i]
  end

  return ary
end

ary1 = {1,2,3,4}
ary2 = {5,6,7,8}
expected = {5,6,7,8,1,2,3,4}
actual = concatenate(ary2, ary1)

assert(#expected == #actual)
for i = 1, #expected do
  assert(expected[i] == actual[i])
end

