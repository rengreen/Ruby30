# 30 Days of Code. Day 16: Exceptions - String to Integer

=begin
Sample Input 0
3

Sample Output 0
3

Sample Input 1
za

Sample Output 1
Bad String
=end

puts "Sample Input 0\n3\n\nSample Output 0\n3\n\n"
puts "Sample Input 1\nza\n\nSample Output 1\nBad String\n\n"

puts "\nInput:"
S = gets.strip 

puts "\nOutput:"    
begin
  i = Integer(S)
  puts i
rescue
  puts "Bad String"
end