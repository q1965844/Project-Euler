require 'prime'
def number_divisors(n) #約数の総和を求める
    sum = n.prime_division.map{ |p, e| (p ** (e + 1) - 1) / (p - 1) }.inject(:*)
    sum =sum-n
  end

def euler023
    arr =[]
    arr2 =[]
    arr3 =[1]
    hist =Array.new(23123,true)
    (2...23123).each do |i|
        arr3 <<i
        a=number_divisors(i)
        if a>i
            arr << i
        end
    end
    (0...arr.count).each do |i|
        (i...arr.count).each do |j|
            arr2 << arr[i] +arr[j] if hist [arr[i] +arr[j]] && arr[i] +arr[j]<23123
            hist [arr[i] +arr[j]] =false if arr[i] +arr[j]<23123
        end
    end
    ans = (arr3 -arr2)
    ans.reduce(:+)

end
puts euler023