def euler007
    n =10001
    p_n = (2 * n * Math.log(n)).to_i       
    sieve = [true] * p_n                 
    count = 0
    (2 .. p_n).each do |i|
        if sieve[i]                  
            count += 1                     
            if count == n              
                return i
            end
            ((2*i.. p_n).step(i)).each do |j|  
                sieve[j] = false
            end
        end
    end
end



