    load './scanner.rb'

  class mover

    def move(scan)
      puts "Moving clothing"
    if scan "#{type}" == "pants"
      @shelf_1.push(scan)
      return "Moved #{type} to the bottom shelf."
    elsif "#{type}" == "shirt" and "#{color}" == "blue"
      @shelf_2.push(scan)
      return "Moved #{color} #{type} to the middle shelf."
    else "#{type}" == "shirt" and "#{color}" == "green"
      @shelf_3.push(scan)
      return "Moved #{color} #{type} to the middle shelf."
    end

    def shelf_1
      @shelf_1
    end

    def shelf_2
      @shelf_2
    end

    def shelf_3
      @shelf_3
    end

  end
