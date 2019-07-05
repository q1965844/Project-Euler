def euler014
    n= 100_0000
    arr =[]
    hist =[]
    arr2 =0
    max =0
    n.downto(n/2) do|i|
        x = i
        init = i
        arr << x
        while x!=1 && (!hist[i] || x>n) do
            x =(x.even?) ? x/2 : (3*x)+1
            arr << x
            hist[x] =true if x<n
        end
        #print arr,"\n"
        if arr.count >= max
            max = arr.count 
            arr2 = init 
        end
        arr = []
    end
    arr2
end 


                         