listen %w(enlists google inlets banana)

string = "listen"
%w(enlists google inlets banana).each do |word|
  if word.chars.sort == string.chars.sort
    puts word
  end
end
