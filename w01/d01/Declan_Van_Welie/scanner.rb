
  class scanner

    def initialize
      @clothing_type = ["shirt","pants"]
      @clothing_color = ["blue","green"]

    def scan(color, type)
      puts "scanning clothing"
      scans_clothing(color, type)
      return "#{color} #{type} found!"
    end

    def clothing_color
      @clothing_color
    end

    def clothing_type
      @clothing_type
    end

    def scans_clothing(color, type)
      @clothing_color.push(color)
      @clothing_type.push(type)

    end

  end

