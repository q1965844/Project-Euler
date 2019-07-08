def euler019
    month = [31,28,31,30,31,30,31,31,30,31,30,31]
    ans =0
    sum =0
    daySum =0
    leapYearArr =[]
    mon_1st =[]
    arr =[]
    (1900).upto(2000) do |i|
        if ((i%4==0 && i%100!=0) || i%400==0)
            month[1]= 29
        else
            month[1]= 28
        end
        #print i,month,"\n"
        daySum +=month.reduce(:+); 
        sum = daySum

        11.downto(0) do |j|
            mon_1st << sum - month[j]+1
            sum -=month[j]
        end
    end
    (1..daySum-1).each do|i| 
        if i%7==0 && i >365
            arr << i
        end
    end
    (0..mon_1st.count).each do |k|
        if arr.include?(mon_1st[k])  
            ans+=1
        end
    end
    ans
end