def NumSplit(num)
    number_one = %W(zero one two three four five six seven eight nine)
    number_ten = %W(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteem)
    number_ty  = %W(empty ten twenty thirty forty fifty sixty sevebty eighty ninety  thousand)
    arr =[]
    return ["one","thousand"] if num == 1000
    hundred = num /100
    remain = num % 100
    if hundred>0 
        arr << number_one [hundred] 
        arr <<"hundred"
        if remain >0
            arr << "and"
        end
    end
    if remain>0 
        ten = remain/10
        one = remain%10
        if  ten>=2
            arr <<number_ty[(ten)]
        end
        return arr << number_ten [one] if ten==1
        arr << number_one [(one)] if one>0 
    end
    arr
end                                                                                                                                                                                                         
def euler017
    ans = (1..1000).map{|i| NumSplit(i).join.size} 
    #(1..1000).each{|j| print ans[j],ans[j].join.size,"\n"} 
    sum = ans.reduce(:+)
    sum 
end