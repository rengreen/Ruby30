# 30 Days of Code. Day 10: Binary Numbers

=begin
Sample Input 1
5
Sample Output 1
1

Sample Input 2
13
Sample Output 2
2
=end

puts "Sample Input 1\n5\nSample Output 1\n1\n\n"
puts "Sample Input 2\n13\nSample Output 2\n2\n"

puts "\nInput:"
n = gets.to_i

counter=0
maxcounter=0
        
while n > 0 do
    remainder = n%2
    n = n/2

    if remainder==1
        counter+=1
        if counter>maxcounter
            maxcounter=counter
        end    
    else
        counter=0
    end
end

puts "\nOutput:"
puts maxcounter