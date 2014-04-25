class Sandwich
  def initialize(bread, jelly, peanut_buter)
    if bread.class == Bread &&
      bread.sliced &&
      jelly.class == Jelly &&
      peanut_butter.class == PeanutButter

      @bread = bread
      @jelly = jelly
      @peanut_butter = peanut_butter
    else
      raise

  end

end
