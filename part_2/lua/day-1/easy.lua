-- Returns true if the final digist of num is 3
-- false otherwise.
function ends_in_3(num)
  strnum = tostring(num)
  return strnum:sub(#strnum,-1) == "3"
end

assert(ends_in_3(123))
assert(ends_in_3(333131313133))
assert(not ends_in_3(5000))

-- Returns whether a number is prime or not
function is_prime(num)
  num = math.abs(num)

  if num < 2 then
    return false
  end

  if num ~= 2 and num % 2 == 0 then
    return false
  end

  local sqrt = math.sqrt(num)
  local div = 3
  while div <= sqrt do
    if num % div == 0 then
      return false
    end
    div = div + 2
  end

  return true
end

assert(is_prime(2))
assert(is_prime(11))
assert(is_prime(29))
assert(is_prime(104729))
assert(not is_prime(0))
assert(not is_prime(1))
assert(not is_prime(10))

