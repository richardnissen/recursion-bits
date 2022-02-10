def fibs(n)
  result = [0, 1]
  for i in 2..n do
    result.push(result[i - 2] + result[i - 1])
  end
  result
end

def fibs_rec(n)
  return [0] if n == 0
  return [0, 1] if n == 1

  arr = fibs_rec(n - 1)

  arr.push(arr[-2] + arr[-1])
end
