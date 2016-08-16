-- Returns true if the final digist of num is 3
-- false otherwise.
function ends_in_3(num)
  strnum = tostring(num)
  return strnum:sub(#strnum,-1) == "3"
end

assert(ends_in_3(123))
assert(ends_in_3(333131313133))
assert(not ends_in_3(5000))



