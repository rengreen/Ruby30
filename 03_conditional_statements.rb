# 30 Days of Code. Day 3: Intro to Conditional Statements

=begin
Sample Input 0
3
Sample Output 0
Weird

Sample Input 1
24
Sample Output 1
Not Weird
=end

puts "Sample Input 0:\n3\nSample Output 0:\nWeird\n\n"
puts "Sample Input 1:\n24\nSample Output 1:\nNot Weird\n\n"

puts "Input:"
number = gets.to_i

puts "\nOutput:"
if number%2 !=0 || number >= 6 && number <= 20
    puts "Weird"
else 
    puts "Not Weird"
end