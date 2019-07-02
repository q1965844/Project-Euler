def remainder(number)
    n = 1...(Math.sqrt(number)).to_i
    sum =n.select{|item| number%item == 0}
    sum
end

def euler003
    x = 600851475143
    i = 1
    arr = remainder(x).to_a
 
    while i < arr.count
        arr2 = arr.select{|item| item % arr[i] == 0}  
        arr = arr - arr2 
        i = i+1
    end
    arr.max
end


