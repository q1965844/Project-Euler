def m_prime(n)
    arr =[]
    (2..n).each do|i| 
        if n % i == 0  
            arr << i
            n = n / i
            redo if n !=1
        end
    end
    arr
end

def euler007
    arr2 =[2]
    i=2
    loop do
        if m_prime(i).count == 1
            arr2 << m_prime(i)
        end
        i +=1
        break if arr2.count == 10000
    end
    puts arr2.max
end

puts euler007

