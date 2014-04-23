class Mover

  def grab_multiple_items(array)
    array.each do |item|
      @@claw.push(item)
    end
  end

  def move_item(item, destination)
    @@claw.push(item)
    destination.push(@@claw)
    @@claw = []
  end

end
