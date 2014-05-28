class Counter
  def initialize(name)
    @count = 0
    @name = name
  end

  def call()
    @count += 1
    puts "This counter (#{@name}) has been called #{@count} times."
  end
end

def make_counter(name)
  count = 0
  return Proc.new do
    count += 1
    puts "This counter (#{name}) has been called #{count} times."
  end
end

# ---

puts "CLASSES:"; puts

cat_counter = Counter.new("CATS")
dog_counter = Counter.new("DOGS")

puts "I've defined #{cat_counter} and #{dog_counter}."; puts

3.times { cat_counter.call() }

puts

3.times { dog_counter.call() }

puts; puts

puts "CLOSURES:"; puts

cat_counter = make_counter("CATS")
dog_counter = make_counter("DOGS")

puts "I've defined #{cat_counter} and #{dog_counter}."; puts

3.times { cat_counter.call() }

puts

3.times { dog_counter.call() }
