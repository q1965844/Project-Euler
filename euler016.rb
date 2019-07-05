def euler016
    sum = (2**1000).to_s.split(//).map{|i| Integer(i)}.reduce(:+)
    sum
end 

                         
