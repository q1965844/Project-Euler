def remainder(number)
    n = 1...(Math.sqrt(number)).to_i
    sum = n.select{|item| number%item == 0}
    sum
end

def euler012
    n = 12000
    sum = 0
    loop do
        sum = (1 + n) * n / 2 
        re = remainder(sum).count
        break if re >250
        n+=1
    end
    sum
end

puts euler012

                         