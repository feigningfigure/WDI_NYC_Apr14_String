class Planet < ActiveRecord::Base


  def mass_expressive
    return "#{mass} x 10 <sup>#{mass_factor}</sup>"
  end

  def mass_expressive=(input)
    mass= input.split('x')[0].strip
    mass_factor= input.split('10')[1].strip
  end

end
