def remainder(number)
    sum = (1..number).select{|item| number%item == 0}
    sum
end

def euler012
    n = 1
    temp =0
    sum = 0
    loop do
        sum = temp+n
        temp =sum
        break if remainder(sum).count >200
        n+=1
    end
    

    puts sum,remainder(sum).count
end
puts euler012


                         