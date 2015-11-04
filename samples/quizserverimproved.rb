require "sinatra"
require "erb"
set :port, ENV["PORT"]
set :bind, ENV["IP"]

QUIZ = [{ question: "Capital of Ireland?", answer: "Dublin" },
        { question: "Lbs in a stone?", answer: "14" }]

get "/" do
  redirect to "/question/0"
end

get "/question/:id" do
  index = params[:id].to_i
  if QUIZ[index]
    erb :quiz, locals: { question: QUIZ[index][:question], index: index }
  else
    status 404
    "Not found"
  end
end

post "/question/:id" do
  index = params[:id].to_i
  if params[:answer] == QUIZ[index][:answer]
    if QUIZ[index + 1]
      redirect to "/question/#{index + 1}"
    else
      "You got them all right!"
    end
  else
    redirect to "/question/#{index}"
  end
end
