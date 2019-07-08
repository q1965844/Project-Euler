def remainder(number)
    sum = (1...(number).to_i).select{|item| number%item == 0}
    sum
end

def euler021
    arr=[]
    hist=[true]*10000
    a =1
    (10...10000).each do |i|
        if hist[i]
            a = remainder(i).reduce(:+)
            b = remainder(a).reduce(:+)
        end
        if i == b && i!=a
            arr << [i,a] 
        else
            hist[a] =false
        end

    end
    arr.flatten.uniq.reduce(:+)
end
puts euler021
