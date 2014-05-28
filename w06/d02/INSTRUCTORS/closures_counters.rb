class Counter
  def initialize(name)
    # Yo, Ruby! Hold on to these variables please.
    @count = 0
    @name = name
  end

  def call()
    @count += 1
    puts "This counter (#{@name}) has been called #{@count} times."
  end
end

def make_counter(name)
  # create a new local variable
  count = 0
  # create a closure by making a new Proc that
  # relies on the local variables 'count' and 'name'
  counter = Proc.new do
    count += 1
    puts "This counter (#{name}) has been called #{count} times."
  end
  # return that closure, thus preserving this scope
  return counter
end

# ---

def prove_sameness(cat_counter, dog_counter)
  puts "I've defined #{cat_counter} and #{dog_counter}."; puts
  3.times { cat_counter.call() }
  puts
  3.times { dog_counter.call() }
  puts; puts
end

puts "CLASSES:"; puts
prove_sameness(Counter.new("CATS"), Counter.new("DOGS"))

puts "CLOSURES:"; puts
prove_sameness(make_counter("CATS"), make_counter("DOGS"))
