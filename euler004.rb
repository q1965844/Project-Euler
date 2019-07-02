def multiplication(num)
    i=0
    while i<num.count/2
        if num[i] != num[num.count-i] 
            istrue = false
            istrue
            break
        end  
        i +=1
    end
    
    istrue
end

def euler004
    a,b =999,999
    while a>100
        b=a
        while b>100
            sum = a*b
            str = sum.to_s.split(//)
            if(multiplication(str))
                puts "gg"
                puts str
            end
            b-=1
        end
        a -=1
    end
end
puts euler004