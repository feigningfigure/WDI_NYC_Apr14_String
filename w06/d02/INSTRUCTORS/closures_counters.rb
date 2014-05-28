# count <- local
# @count <- instance
# $count <- global
# @@count <- class

class Counter

  # We'll use a class variable to keep track of
  # how many Counters have ever been created.
  @@count = 0

  def initialize(name)
    # We'll use an instance variable to keep track of
    # EACH counter's calls
    @count = 0
    @name = name

    # Increment the CLASS counter
    @@count += 1

    puts "I have initialized the #{name} Counter."
    puts "There have now been #{@@count} Counters made."
  end

  def call()
    @count += 1
    puts "This counter (#{@name}) has been called #{@count} times."
    puts "There are #{@@count} Counters in the wild."
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

puts

cat_counter.call()
dog_counter.call()

puts; puts

puts "CLOSURES:"; puts

cat_counter = make_counter("CATS")
dog_counter = make_counter("DOGS")

puts "I've defined #{cat_counter} and #{dog_counter}."; puts

3.times { cat_counter.call() }

puts

3.times { dog_counter.call() }
