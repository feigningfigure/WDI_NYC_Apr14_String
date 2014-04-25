class Sandwich
  def initialize(bread, jelly, peanut_butter)
      if  bread.class == bread &&
          bread.sliced &&
          jelly.class == jelly &&
          peanut_butter.class == peanut_butter
          @bread = bread
          @jelly = jelly
          @peanut_butter = peanut_butter
      else
        raise StandardError
    end
  end
end
