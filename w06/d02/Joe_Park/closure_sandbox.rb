# This "count" variable is in the top-level scope
count = 0

def counter()
    # THIS "count" variable is in the scope of the
    # counter() method's definition
    count += 1
    puts "now I've been called #{count} times"
end

5.times { counter() }