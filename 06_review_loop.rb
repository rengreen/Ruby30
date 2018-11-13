# 30 Days of Code. Day 6: Let's Review

=begin
Sample Input
2
Hacker
Rank

Sample Output
Hce akr
Rn ak

=end

puts "Sample Input\n2\nHacker\nRank\n\n"
puts "Sample Output\nHce akr\nRn ak\n"

puts "\nInput:"
number_of_test_cases=gets.to_i

cases = Array.new
for i in 0...number_of_test_cases
    cases[i]=gets.chomp
end

puts "\nOutput:"
for i in 0...number_of_test_cases
    even=""
    odd=""
    chars = cases[i].split('')
    for i in 0...chars.length
        if i%2==0
            even=even+chars[i]
        else
            odd=odd+chars[i]
        end    
    end
    puts "#{even} #{odd}"
    
end