MONTHS = ["January", "February", "March","April" ,"May", "June", "July", "August", "September", "October", "November", "December"]
# Array of months for our conversion

# Function to turn a number into a month
def number_to_month(number)
  return MONTHS[number - 1]
end

def day_suffix(day)
  # Default suffix for a day
  suffix = "th"

  if day / 10 == 1 # teens
    suffix = "th"
  elsif day % 10 == 1 # 1st, 21st etc.
    suffix = "st"
  elsif day % 10 == 2 # 2nd, 22nd etc.
    suffix = "nd"
  elsif day % 10 == 3 # 3rd, 23rd etc.
    suffix = "rd"
  end

  return suffix
end


# Function to check if a year is a leap year
def is_leap_year?(year)
  return (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

# Function to check if a date is valid
def is_valid_date?(day, month, year)
  if day > 31 || day < 1 || month > 12 || month < 1 # Check if it's outside possible values for day and month
    return false
  elsif month == 2
    if day <= 28 || (day == 29 && is_leap_year?(year)) # Checks for February
      return true
    else
      return false
    end
  elsif [4, 6, 9, 11].include?(month) && day > 30 # Checks months with 30 days
    return false
  else
    return true # Otherwise we're happy
  end
end


puts "Please enter a date in the form dd/mm/yyyy"
input = gets.chomp
date = input.split("/")
# Split the user input date

if date.length == 3

  day = date[0].to_i
  month = date[1].to_i
  year = date[2].to_i
  # Convert parts into integers and give them nice names for reuse

  if is_valid_date?(day, month, year)
    puts "#{day}#{day_suffix(day)} of #{number_to_month(month)} #{year}"
  else
    puts "Sorry, invalid date"
  end
else
  puts "Not in the correct format"
end
