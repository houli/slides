require "sinatra"
set :port, ENV["PORT"]
set :bind, ENV["IP"]

def factorial(n)
  if (0..1).include? n
    1
  else
    n * factorial(n - 1)
  end
end

def square(n)
  n * n
end

def is_even?(n)
  n % 2 == 0
end

get "/:number" do
  n = params[:number].to_i
  if is_even?(n)
    "#{n} is even, factorial(#{n}) is #{factorial(n)}, squared is #{square(n)}"
  else
    "#{n} is not even, factorial(#{n}) is #{factorial(n)}, squared is #{square(n)}"
  end
end
