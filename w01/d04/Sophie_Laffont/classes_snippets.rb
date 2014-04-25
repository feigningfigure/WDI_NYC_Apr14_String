class MutablePoint def initialize(x,y);
def x; @x; end def y; @y; end
def x=(value) @x = value
end
def y=(value) @y = value
end end
@x, @y = x, y; end
# The getter method for @x # The getter method for @y
# The setter method for @x
# The setter method for @y