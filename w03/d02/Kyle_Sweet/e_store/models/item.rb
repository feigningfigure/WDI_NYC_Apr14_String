class Item

  # < ActiveRecord::Base

#   def self.authenticate_safely_simply(name, price, description, quantity, created_at)
#     where(name: name, price: price, description: description, quantity: quantity, created_at: created at).first
#   end
# end
  attr_accessor :name, :price, :description, :quantity, :create_at

  def initialize(attributes_hash)
    # does not create on the database
    # only creates a Ruby instance
    @name = attributes_hash[:name]
    @price = attributes_hash[:price]
    @description = attributes_hash[:description]
    @quantity = attributes_hash[:int]
    @created_at = attributes_hash[:created_at]
  end

 def self.connect_to_db
    PG.connect(dbname: 'amazon_e_store')
  end
end

  def create(name, price, description, quantity, create_at)
    end

  end

    def self.all(option_clause=nil)
    posts = []
    self.connect_to_db.exec("SELECT * FROM posts #{option_clause}").each do |post|

      # workaround code begins here
      symbolified_hash = {}
      item.each do |key,value|
        symbolified_hash[key.to_sym] = value
      end
      # workaround code ends here

      items << Item.new(symbolified_hash)
    end
    items
  end
