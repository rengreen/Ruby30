# 30 Days of Code. Day 7: Arrays

=begin
Sample Input
4
1 4 3 2

Sample Output
2 3 4 1

=end

puts "Sample Input\n4\n1 4 3 2\n\n"
puts "Sample Output\n2 3 4 1\n"

puts "\nInput:"
n = gets.to_i
arr = gets.rstrip.split(' ').map(&:to_i)


puts "\nOutput:"
for i in 1..arr.length
    print arr[arr.length-i], ' '
end