

x = "listen"

words = %w(enlists google inlets banana)
newords = []

charword = x.split(//).sort.join

words.each do |word|
 newords << word.split(//).sort.join
end

newords.each do |neword, index|
  if neword == charword
    # puts words[index.to_i]
    puts words[index.to_i]
end
end
