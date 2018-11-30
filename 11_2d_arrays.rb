# 30 Days of Code. Day 11: 2D Arrays

=begin
Sample Input
1 1 1 0 0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 2 4 4 0
0 0 0 2 0 0
0 0 1 2 4 0

Sample Output
19
=end


puts "Sample Input\n1 1 1 0 0 0\n0 1 0 0 0 0\n1 1 1 0 0 0\n0 0 2 4 4 0\n0 0 0 2 0 0\n0 0 1 2 4 0\n\n"
puts "Sample Output\n19\n"

puts "\nInput:"
arr = Array.new(6)
6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end
       
sum=arr[0][0]+arr[0][1]+arr[0][2]+
            arr[1][1]+
            arr[2][0]+arr[2][1]+arr[2][2]; 
max=sum;

for i in 1...5
    for j in 1...5 
        sum=arr[i-1][j-1]+arr[i-1][j]+arr[i-1][j+1]+
            arr[i][j]+
            arr[i+1][j-1]+arr[i+1][j]+arr[i+1][j+1] 
        if (max<sum)
            max=sum  
        end               
    end  
end   

puts "\nOutput:"    
puts max