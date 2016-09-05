dofile('easy.lua')

local arr_mt = {
  __add = concatenate
}

local _private = {}
setmetatable(_G, {
    __newindex = function(table, key, value)
      setmetatable(value, arr_mt)
      _private[key] = value
    end,
    __index = function(table, key)
      return _private[key]
    end
  })

a = {1,2,3}
b = {4,5,6}
expected = concatenate(a, b)
actual = a + b

for k, v in ipairs(expected) do
  assert(actual[k] == v)
end
