class Animal

  attr_accessor :name, :toys, :type

    def initialize(name, toys, type)
      @name = name
      @toys = []
      @type = type
    end

    def to_s
      "#{@name} is a 3 year old cat that loves #{@toys.join(", ")}"
    end


end
