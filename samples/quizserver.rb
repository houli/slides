require "sinatra"
require "erb"
set :port, ENV["PORT"]
set :bind, ENV["IP"]

QUIZ = [{ question: "Capital of Ireland?", answer: "Dublin" },
        { question: "Lbs in a stone?", answer: "14" }]

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
    "Correct!"
  else
    "Incorrect!"
  end
end
