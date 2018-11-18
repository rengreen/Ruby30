# 30 Days of Code. Day 9: Recursion

=begin
Sample Input
3

Sample Output
6
=end

puts "Sample Input\n3\n"
puts "Sample Output\n6\n"

def factorial(n)
    if n > 1
        return n*factorial(n-1)
    else  
        return 1
    end

end

puts "\nInput:"
n = gets.to_i
result = factorial n

puts "\nOutput:"
puts result
