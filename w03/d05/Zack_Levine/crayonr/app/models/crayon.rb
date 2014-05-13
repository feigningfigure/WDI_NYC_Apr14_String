class Crayon < ActiveRecord::Base

  # belongs_to :symbol_name_of_table_singular
  belongs_to :owner

  def bright?
    if self.intensity > 50
      true
    else
      false
    end
  end

end
