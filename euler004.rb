def euler004
    max =0
    (100..999).each do|i| 
        (i..999).each do |j|
            sum =i*j
            str = sum.to_s
            str_r =str.reverse
            if str == str_r
                if sum > max
                    max = sum
                end
            end
        end
    end
    max
end
