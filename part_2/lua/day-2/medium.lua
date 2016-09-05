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

local Queue = {first = 0, last = -1}

function Queue:new()
  local obj = {}
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function Queue:add(item)
  local last = self.last + 1
  self.last = last
  self[last] = item
end

function Queue:remove()
  local first = self.first
  if first > self.last then return nil end
  local value = self[first]
  self[first] = nil
  self.first = first + 1

  return value
end

local q = Queue:new()

q:add(1)
q:add(2)
q:add(4)

assert(q:remove() == 1)
assert(q:remove() == 2)
assert(q:remove() == 4)
assert(q:remove() == nil)

q:add(5)
assert(q:remove() == 5)
assert(q:remove() == nil)
assert(q:remove() == nil)
