function for_loop(a, b, f)
  local n = a
  while n <= b do
    f(n)
    n = n + 1
  end
end

for_loop(1, 5, print)

