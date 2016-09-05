math.randomseed(os.time())

function retry(count, body)
  local _, response = coroutine.resume(coroutine.create(body))
  if response ~= nil then
    for i = 1, count do
      local _, response = coroutine.resume(coroutine.create(body))
      if response == nil then return end
    end

    print("Too many retries")
  end
end

retry(5, function()
  local num = math.random()
  if num > 0.2 then
    coroutine.yield('Something bad happened')
  end

  print('Succeeded')
end)

