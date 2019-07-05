def euler015
    r =20
    n =40
    sum =(n-r+1..n).reduce(:*)/(1..r).reduce(:*)
    sum
end 
#(C2n,n)
                         
