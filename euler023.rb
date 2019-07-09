require 'prime'
def number_divisors(n) #約数の総和を求める
    sum = n.prime_division.map{ |p, e| (p ** (e + 1) - 1) / (p - 1) }.inject(:*)
    sum =sum-n
  end

def euler023
    abun_arr =[] # abun =abundant
    abun_add_arr =[]
    total =[1]
    hist =Array.new(23123,true)
    (2...23123).each do |i|
        total <<i
        a=number_divisors(i)
        if a>i
            abun_arr << i
        end
    end
    (0...abun_arr.count).each do |i|
        (i...abun_arr.count).each do |j|
            c =abun_arr[i] +abun_arr[j]
            abun_add_arr << c if hist [c] && c<23123
            hist [c] =false if c<23123
        end
    end
    ans = (total -abun_add_arr)
    ans.reduce(:+)
end