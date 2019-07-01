def euler002
    x = 1
    y = 2
    arr = 0
    sum = 0
        while (arr <=4000000)
            if (arr%2 ==0)
                sum +=arr
            end
            arr = x+y
            x = y
            y = arr
        end 
    sum +2
end