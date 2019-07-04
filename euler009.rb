def euler009
    top = 1000
    sum = 0
    (1...top).each do |i|
        (i+1...top-i).each do |j|
            (j+1...top-(j)).each do |k|
                if (i+j+k == 1000 )
                    if  i**2 + j**2 == k**2
                        sum = i*j*k
                    end
                end
            end
        end
    end
    sum
end


