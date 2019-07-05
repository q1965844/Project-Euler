def euler019
    month = [30,28,31,30,31,30,31,31,30,31,30,31]
    count =0
    arr =[]
    1900.upto(2000) do |i|
        if (i%4==0 && i%100!=0 || i%400==0)
            count +=1
            month[1]= 29
        else
            month[1]= 28
        end
        
    end
    sum = (count*364) + (101-count)*365
    (1..sum).each do|i| 
        if i%7==1
            
        end
    end
    sum
end
puts euler019