puts "Enter a list of numbers separated by commas"
input = gets.chomp
numbers = input.split(",")

total = 0.0
numbers.each do |number|
  total += number.to_f
end
puts "Average is #{total / numbers.length}"
