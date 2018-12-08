# 30 Days of Code. Day 20: Sorting

=begin
Sample Input 0
3
1 2 3

Sample Output 0
Array is sorted in 0 swaps.
First Element: 1
Last Element: 3

Sample Input 1
3
3 2 1

Sample Output 1
Array is sorted in 3 swaps.
First Element: 1
Last Element: 3
=end

puts "Sample Input 0\n3\n1 2 3\n\nSample Output 0\nArray is sorted in 0 swaps.\nFirst Element: 1\nLast Element: 3\n\n"
puts "Sample Input 1\n3\n3 2 1\n\nSample Output 1\nArray is sorted in 3 swaps.\nFirst Element: 1\nLast Element: 3\n"

puts "\nInput:"
n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
# Write Your Code Here

swaps=0
for i in 0...n
    for j in 0...n - 1
        if a[j] > a[j + 1]
            temp=a[j]
            a[j]=a[j+1]
            a[j+1]=temp
            swaps+=1
        end
    end
    if swaps == 0 
        break
    end
end

puts "\nOutput:"
puts "Array is sorted in #{swaps} swaps"
puts "First Element: #{a.first}"
puts "Last Element: #{a.last}"