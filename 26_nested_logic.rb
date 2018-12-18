# 30 Days of Code. Day 26: Nested Logics

=begin

Sample Input
9 6 2015
6 6 2015

Sample Output
45

=end

puts "Sample Input\n9 6 2015\n6 6 2015\n\n"
puts "Sample Output\n45\n"

puts "\nInput:"
actual_day, actual_month, actual_year = gets.strip.split(" ").map(&:to_i)
expected_day, expected_month, expected_year = gets.strip.split(" ").map(&:to_i)

fine = 0
if actual_year > expected_year
  fine = 10000
elsif actual_month > expected_month
  fine = 500 * (actual_month - expected_month)
elsif actual_day > expected_day
  fine = 15 * (actual_day - expected_day)
else
  fine = 0
end
  
puts "\nOutput:"      
puts fine