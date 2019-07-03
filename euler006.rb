def euler006
    sum ,sum2 = 0,0
    (1..100).each do |i|
        sum2 += i  
        sum +=(i ** 2)
    end
    sum2 = sum2**2
    (sum2 - sum).abs
end


