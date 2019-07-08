def euler009
    top = 1000
    sum = 0
    top.downto(1) do |i|
        (top-i).downto(i+1) do |j|
            k = top -i-j
            if (i+j+k == 1000 && i**2 + j**2 == k**2)
                sum = i*j*k
            end
        end
    end
    sum
end

