class Owner < ActiveRecord::Base

  def fancy_name
    "#{formal_title} #{name}"
  end

end
