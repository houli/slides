require "sinatra"
set :port, ENV["PORT"]
set :bind, ENV["IP"]

QUIZ = [{ question: "Capital of Ireland?", answer: "Dublin" },
        { question: "Lbs in a stone?", answer: "14" }]

get "/question/:id" do
  index = params[:id].to_i
  if QUIZ[index]
    QUIZ[index][:question]
  else
    status 404
    "Not found"
  end
end
