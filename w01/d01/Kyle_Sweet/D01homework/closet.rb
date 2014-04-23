
Closet = [topshelf, middleshelf, bottomshelf]
Clothing = [shirts, pants]
Color = [green, blue]

class Scanner

def scan.clothingstyle(clothing)
  puts "These are #{clothing}"
  if clothing = shirts scan.color
end

def scan.color(color)
  if color = green
    move #does this call the class mover into action?
end

class Mover

  def move(clothing, color)
    if clothing = "pants" push (bottomshelf)
    elsif clothing = "shirts" and "green" push (topshelf)
    else push (middleshelf)

  end

Organize = scanner.new

Organize.scan.clothingstyle("pants")
Organize.scan.clothingstyle("shirts")

Organize.move("pants")
Organize.move("shirts")

Puts "The closet is organized"


end
