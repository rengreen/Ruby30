# 30 Days of Code. Day 28: RegEx, Patterns, and Intro to Databases

=begin

Sample Input
6
riya riya@gmail.com
julia julia@julia.me
julia sjulia@gmail.com
julia julia@gmail.com
samantha samantha@gmail.com
tanya tanya@gmail.com

Sample Output
julia
julia
riya
samantha
tanya

=end

puts "Sample Input\n6\nriya riya@gmail.com\njulia julia@julia.me\njulia sjulia@gmail.com\n"
puts "julia julia@gmail.com\nsamantha samantha@gmail.com\ntanya tanya@gmail.com\n\n"
puts "Sample Output\njulia\njulia\nriya\nsamantha\ntanya\n"

names_list=[]

puts "\nInput:"
N = gets.strip.to_i

for i in (0..N-1)
    first_name_email = gets
    first_name_email = first_name_email.rstrip.split
    first_name = first_name_email[0].to_s.rstrip
    email = first_name_email[1].to_s.rstrip

    if email.match(/@gmail.com/)
        names_list.push(first_name)
    end
end

puts "\nOutput:"
puts names_list.sort