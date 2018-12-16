# 30 Days of Code. Day 25: Running Time and Complexity

=begin
Sample number of cases:
3

Case 1:
12
Not prime

Case 2:
5
Prime

Case 3:
7
Prime

=end


puts "Sample number of cases:\n3\n\nCase 1:\n12\nNot prime\n\n"
puts "Case 2:\n5\nPrime\n\nCase 3:\n7\nPrime\n"

puts "\nNumber of cases:"
t = gets.to_i


for i in 1..t do
	puts "\nCase #{i}:"
  	n = gets.to_i

  	if (2..Math.sqrt(n)).all? {|i| n%i != 0 }
    	puts "Prime"
  	else
    	puts "Not prime"
  	end

end