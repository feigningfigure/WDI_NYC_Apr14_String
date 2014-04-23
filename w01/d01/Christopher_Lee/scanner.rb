class Scanner
  def find_bed(objects)
    puts "scanning for bed"
    objects.each do |object|
      if object == Bed
        return true
      else
        return false
    end
  end

  def scan_type(item)
    if item.is_a? Shirt && item.color == Green
      return "Green Shirt"
    elsif item.is_a? Shirt && item.color == Blue
      return "Blue Shirt"
    elsif item.is_a? Pants
      return "Pants"
    else
      return "Other"
  end
end
