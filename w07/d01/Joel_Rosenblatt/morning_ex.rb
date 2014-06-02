multiples = []

x = 0
for x in (0...1000) do
  if x % 3 == 0
    multiples << x
  else
    nil
  end
end

multiples.inject{|sum,x| sum + x }
