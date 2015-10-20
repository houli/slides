MONTHS = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
          "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

def number_to_month(number)
  MONTHS[number - 1]
end

def is_even?(number)
  return number % 2 == 0
end

puts is_even? 5
# false
puts(is_even?(6))
# true
puts number_to_month 11
# Nov
