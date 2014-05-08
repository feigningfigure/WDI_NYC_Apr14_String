class Card < ActiveRecord::Base
  # no attr_accessor

  # include Facebook
  # include Imgur
  include Instagram

  def return_property_when_passed_symbol(symbol_passed_in)
    case symbol_passed_in
      when :male
      self.male()

      when :glasses
      self.glasses()

      when :facial_hair
      self.facial_hair()

      when :hat
      self.hat()

      when :beard
      self.beard()

      when :mustache
      self.mustache()

      when :jewelry
      self.jewelry()

      when :earings
      self.earings()

      when :facial_piercing
      self.earings()

      when :hair_color
      self.hair_color()

      when :eye_color
      self.eye_color()
    end
  end
end