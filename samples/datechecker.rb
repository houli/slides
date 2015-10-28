def is_leap_year?(year)
  return (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

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

def check_dates(dates)
  dates.each do |date|

    split_date = date.split("/")

    day = split_date[0].to_i
    month = split_date[1].to_i
    year = split_date[2].to_i

    if is_valid_date?(day, month, year)
      puts "#{date} is valid."
    else
      puts "#{date} is invalid."
    end
  end
end

dates = ["12/04/2015", "32/03/2014", "03/01/1990"]

check_dates(dates)
