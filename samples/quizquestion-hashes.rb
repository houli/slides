quiz = [{ question: "Capital of Ireland?", answer: "Dublin" },
        { question: "Lbs in a stone?", answer: 14 },
        { question: "3.0 divided by 4.0?", answer: 0.75 }]

quiz.each_with_index do |q, index|
  puts "#{index}: #{q[:question]} ANSWER: #{q[:answer]}"
end
