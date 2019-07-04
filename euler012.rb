def remainder(number)
    n = 1...(Math.sqrt(number)).to_i
    sum = n.select{|item| number%item == 0}
    sum
end

def euler012
    n = 1
    temp =0
    sum = 0
    loop do
        sum = temp+n
        temp =sum
        break if remainder(sum).count >500/2
        n+=1
    end
    sum
end


                         