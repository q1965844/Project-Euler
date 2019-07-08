def n!(n)
    sum =1
    (1..n).each do |i|
        sum *= i 
    end
    sum
end

def euler020
    arr = n!(100).to_s.split(//).map{|i| i=i.to_i}
    ans = arr.reduce(:+)
    ans
end