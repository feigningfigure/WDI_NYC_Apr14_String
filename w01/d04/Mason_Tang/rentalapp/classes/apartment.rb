class Apartment

    attr_accessor :name, :price, :sqft, :num_beds, :num_baths, :tenant

    def initialize (name, price, sqft, num_beds, num_baths)
      @name = name
      @price = price
      @sqft = sqft
      @num_beds = num_beds
      @num_baths = num_baths
      @tenant = []
    end

    def is_occupied?
      @tenant.any?
    end

    def to_s
      return "Apt #{@name} is #{@sqft}sqft with #{@tenant.count} tenants. The rent is #{@price} per month"
    end
end

