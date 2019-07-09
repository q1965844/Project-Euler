def euler026
  max = 0

  1000.downto(1) do |i|
    break if max>i
    arr = [0]*i
    one = 1
    count =0
    while arr[one] ==0 && one !=0
      arr[one] =count
      one *=10
      one  =one % i
      count +=1
    end
    max =count-arr[one] if count -arr[one] > max
  end
  max+1 # count[0]
end