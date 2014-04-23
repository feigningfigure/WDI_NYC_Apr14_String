class Student

  # sets the starting state of the object
  def initialize
    item = [""]
  end

  # this is a method
  def find(item)
    # go through process of locating ingredient
    puts "looking for clothing"
    got_item(item)
    return "#{item} Found!"
  end

  # DETERMINES IF THIS A PANT OR A SHIRT
  #RENAMES ITEM SHIRT OR PANT
  def scanner(item)
    if item = new.shirt
    return "#{item} is a shirt!"
  else
    item = new.pants
    return "#{item} is a pair of pants!"
  end



# ANALYZE THE COLOR OF THE SHIRT
  def analyze_color(shirt) 
    
    if color.shirt == rgb(0,255,0)
      shirt = greenShirt
      
    else
      color.shirt == rgb(0,0,255)
      shirt = blueShirt
      
  end

# MOVE THE PANT OR SHIRT TO THE RIGHT SHELF
  def mover
    push greenShirt.to.topShelf
      puts "Puting green shirt on top shelf."
    push blueShirt.to.middleShelf
       puts "Puting blue shirt on middle shelf."
    push pant.to.bottomShelf
       puts "Puting pants on bottom shelf."
  end

class shirt{
  item = short_sleeves;
}

class pants{
  item = zipper;
  item= long_legs;
}

  
