questions = ["Capital of Ireland?", "Lbs in a stone?", "3.0 divided by 4.0?"]
answers = ["Dublin", 14, 0.75]
questions.each_with_index do |question, index|
  puts "#{index}: #{question} ANSWER: #{answers[index]}"
end
