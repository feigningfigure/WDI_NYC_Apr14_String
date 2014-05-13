class Crayon < ActiveRecord::Base

  def bright?
    if self.intensity > 50
      true
    else
      false
    end
  end

end
