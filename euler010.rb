def euler010
    n =2000000
    sieve = [true] * n                 
    sum = 0
    (2 .. n).each do |i|
        if sieve[i]                  
            if i <= n   
                sum += i             
            end
            ((2*i..n).step(i)).each do |j|  
                sieve[j] = false
            end
        end
    end
    sum
end



