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

def euler005   
    arr2 =[]
    sum = 1
    (11..20).each do |i|
        num = m_prime(i)
        (2..num.max).each do|j| 
            if arr2.count(j) < num.count(j)
                (num.count(j)-arr2.count(j)).times {arr2 << j}
            end
        end
    end
    arr2.inject(:*)
end


