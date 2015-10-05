puts "What is your age?"
age = gets.chomp.to_i

if age == 21
  puts "Happy 21st!"
elsif age < 21
  puts "Don't worry, you'll be 21 soon!"
else
  puts "You were 21 #{age - 21} years ago."
end
