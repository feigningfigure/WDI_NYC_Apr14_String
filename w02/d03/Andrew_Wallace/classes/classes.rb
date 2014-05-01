class Developer

  attr_accessor :first, :last, :fav_lang

  def initialize(fav_lang, hash_devs{})
    @fav_lang = fav_lang
    @first = hash_dev[:first]
    @last = hash_dev[:last]
  end

  def to_s
    "My name is #{@first} #{@last} and I love to program in #{@fav_lang}"
  end
end
