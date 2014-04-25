class apartment
  def price
    {$3500}
  end

  def is_occupied
    occupied=gets.chomp
    if occupied == "yes"
      puts "not for available"
    else puts "vacant"
  end

  def sqft
    {1200}
  end

  def num_beds
    {3}
  end

  def num_baths
    {2}
  end

  def renters
    ["Jimbo", "Kearny" , "Dolf"]
  end

