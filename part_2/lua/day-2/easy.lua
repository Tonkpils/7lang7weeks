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

local _private = {}

function strict_write(table, key, value)
  if _private[key] and value ~= nil then
    error("Duplicate key: " .. key)
  else
    _private[key] = value
  end
end

local mt = {
  __newindex = strict_write
}

local st = {}
setmetatable(st, mt)

st.gold = 50
st.gold = nil
assert(st.gold == nil)
