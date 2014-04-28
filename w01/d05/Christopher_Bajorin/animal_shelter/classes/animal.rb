require 'rainbow/ext/string'

class Animal

  attr_accessor :name, :toys, :type, :age

    def initialize(name, age, toys, type)
      @name = name
      @age = age
      @toys = toys
      @type = type
    end

    def to_s
      "#{@name} is a #{@age} year old #{@type} that loves #{@toys.join(", ")}"
    end


end
