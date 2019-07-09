def Fibonacci(n)
  f = [0,1,1]
  ans =0
  (3..n).each do |i|
    f << f[i-1]+f[i-2]
    ans=i
    break if (f[i-1]+f[i-2]).to_s.size ==1000
  end
  ans
end

def euler025
 Fibonacci(1000000)
end
