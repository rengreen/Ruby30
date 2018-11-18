# 30 Days of Code. Day 8: Dictionaries and Maps

=begin
Number of Input Lines:
3
Input Lines:
sam 99912222
tom 11122222
harry 12299933

Number of Test Lines:
3
Test Lines:
sam
edward
harry

Sample Output
sam=99912222
Not found
harry=12299933

=end

puts "Number of Input Lines:\n3\nInput Lines:\nsam 99912222\ntom 11122222\nharry 12299933\n\n"
puts "Number of Test Lines:\n3\nTest Lines:\nsam\nedward\nharry\n\n"
puts "Sample Output\nsam=99912222\nNot found\nharry=12299933\n"

puts "\nNumber of Input Lines:"
n=gets.to_i

puts "Input Lines:"
phone_book = Hash.new
for i in 0...n
    input = gets.split(" ")
    phone_book[input[0]] = input[1]
end

puts "\nNumber of Test Lines:"
t=gets.to_i

puts "Test Lines:"
tests = Hash.new
for i in 0...t
    tests[i] = gets.chomp
end

puts "\nOutput:"
for i in 0...t   
    if phone_book.has_key?(tests[i])
        puts "#{tests[i]}=#{phone_book[tests[i]]}"
    else
        puts "Not found"
    end   
 end   