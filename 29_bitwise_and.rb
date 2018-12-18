# 30 Days of Code. Day 29: Bitwise AND

=begin

Sample number of cases:
3

Case 1:
5 2
1

Case 2:
8 5
4

Case 3:
2 2
0

=end

puts "Sample number of cases:\n3\n\nCase 1:\n5 2\n1\n\n"
puts "Case 2:\n8 5\n4\n\nCase 3:\n2 2\n0\n"

puts "\nNumber of cases:"
t = gets.to_i

for i in 1..t do
	puts "\nCase #{i}:"
    nk = gets.rstrip.split
    n = nk[0].to_i
    k = nk[1].to_i

    a = k - 1
    b = (~a) & -(~a)

    if (a | b) > n
        puts (a - 1)
    else
        puts a
    end
end