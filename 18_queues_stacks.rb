# 30 Days of Code. Day 18: Queues and Stacks

=begin
Sample Input 0
racecar

Sample Output 0
The word, racecar, is a palindrome.

Sample Input 1
yes

Sample Output 1
The word, yes, is not a palindrome.
=end

puts "Sample Input 0\nracecar\n\nSample Output 0\nThe word, racecar, is a palindrome.\n\n"
puts "Sample Input 1\nyes\n\nSample Output 1\nThe word, yes, is not a palindrome.\n\n"

puts "\nInput:"
# create the Solution class
class Solution
    # complete the code
    def initialize
        @q = []
        @s = []
    end
    def push_character(c)
        @s.push(c)
    end
    def enqueue_character(c)
        @q.push(c)    
    end
    def pop_character
        @s.pop
    end
    def dequeue_character
        @q.shift
    end
end

# create Solution class object
solution = Solution.new

# read the input
input = gets.chop

input.split('').each do |c|
    # push the character to stack
    solution.push_character c
    
    # enqueue the character to queue
    solution.enqueue_character c
end

# check if input string is palindrome or not
is_palindrome = true

(input.length / 2).times do
    if solution.pop_character != solution.dequeue_character
        is_palindrome = false
        break
    end
end

puts "\nOutput:"  
# print if string is palindrome or not
if is_palindrome
    puts "The word, #{input}, is a palindrome."
else
    puts "The word, #{input}, is not a palindrome."
end