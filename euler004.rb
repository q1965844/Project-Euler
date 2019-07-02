def multiplication(num)
    i,count=0,0
    puts num
    while i<num.count/2
        if num[i] == num[num.count-i] 
            puts num[i] + num[num.count-i]
            count +=1
        else
            break
        end  
        i +=1
    end
    istrue = count>=3? true:false
    istrue
end

def euler004
    a,b =999,999
    while a>100
        b=a
        while b>100
            sum = 906609
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