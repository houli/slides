nums = [12, 30, 3, 5, 8, 1, 4]
nums.each do |number|
  if number % 2 == 0
    puts "#{number} is even."
  else
    puts "#{number} is odd."
  end
end
