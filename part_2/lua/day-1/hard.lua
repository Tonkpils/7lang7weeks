function reduce(max, init, f)
  local result = init
  for i = 1, max do
    result = f(result, i)
  end

  return result
end

function add(previous, next)
  return previous + next
end

assert(reduce(5, 0, add) == 15)

function factorial(n)
  return reduce(n, 1, function(prev, next)
    return prev * next
  end)
end

assert(factorial(10) == 3628800)
