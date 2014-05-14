class Computer < ActiveRecord::Base
  belongs_to :person
  has_many :applications, through: :units
  has_many :units

  def add_unit(quantity, computer_maker, application_name)
    application = Applicaiton.find_by_name(computer_maker)
    if application
      self.units << Unit.create({
        quantity: quantity,
        computer: computer_maker,
        application: application
        })
    else
      puts "None found."
      nil
    end
  end
end
