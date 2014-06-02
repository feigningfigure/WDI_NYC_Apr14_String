# RUBY
start = Time.now

total = 0

(1...1000).each do |x|
  if ( x % 3 == 0 || x % 5 == 0 )
    total += x
  end
end

puts total

stop = Time.now

puts (stop - start) * 1000
