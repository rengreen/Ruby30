# 30 Days of Code. Day 2: Operators

=begin
Sample Input:
12.00
20
8

Sample Output:
15
=end


def solve(meal_cost, tip_percent, tax_percent)
    tip= meal_cost*tip_percent/100
    tax= meal_cost*tax_percent/100
    sum=meal_cost+tip+tax

    puts "\nSample Output:"
	puts sum.round
end

puts "Sample Input:"
meal_cost = gets.to_f
tip_percent = gets.to_i
tax_percent = gets.to_i

solve meal_cost, tip_percent, tax_percent

