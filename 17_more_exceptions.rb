# 30 Days of Code. Day 17: More Exceptions

=begin
Sample number of cases:
4

Case 1:
3 5
243

Case 2:
2 4
16

Case 3:
-1 -2
n and p should be non-negative

Case 4:
-1 3
n and p should be non-negative
=end

puts "Sample number of cases:\n4\n\nCase 1:\n3 5\n243\n\nCase 2:\n2 4\n16\n\n"
puts "Case 3:\n-1 -2\nn and p should be non-negative\n\nCase 4:\n-1 3\nn and p should be non-negative\n"

class RangeError < StandardError
end
# Write your code here
class Calculator
  def power(n,p)
    if n < 0 || p < 0
      raise RangeError.new("n and p should be non-negative")
    else
      n**p
    end
  end
end

myCalculator = Calculator.new()
puts "\nNumber of cases:"
t = gets.to_i

for i in 1..t
    puts "\nCase #{i}:"
    n, p = gets.split.map(&:to_i)
    begin
        ans = myCalculator.power(n, p)
        puts ans.to_i
    rescue RangeError => e
        puts e.message
    end
end