require pry

class Blender

  def on_off(switch)
    puts "Turn the blender on or off by typing 'on' or 'off"
    switch = gets.chomp
    if switch == "on"
      "switch is on"
      mix_char
      else switch == "off"
        mix_char.abort
    end
    on_off(switch)
  end

  def mix_char(x)
    for x.each do |ingredient, measurement|
      all_ingredients = "#{incredient}"
      puts all_ingredients

   end

  end
mix_char()
