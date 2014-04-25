class Notebook
    attr_accessor :owner

    def initialize()
      #The below will create a stack overflow...infinite loop
      # @owner = Student.new
    end

  end
