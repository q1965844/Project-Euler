def permutation(string)
    return [string] if string.size < 2
    ch = string[0]
    permutation(string[1..-1]).each_with_object([]) do |perm, result|
      (0..perm.size).each { |i| result << perm.dup.insert(i,ch) }
    end
end

def euler024
    arr=[0,1,2,3,4,5,6,7,8,9]
    n =1
    arr = permutation("0123456789").sort
    arr[100_0000-1].to_i
end