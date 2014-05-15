class Oilfield < ActiveRecord::Base
  belongs_to :country

  has_many :operators, through: :stakes

  has_many :stakes




  def add_stake(percentage, operator_name)
    #
    operator = Operator.find_by_name(operator_name)

    # if ingredient is found...
    if operator
      # get this instance of recipe's own portions
      self.stakes << Stake.create({
        percentage: percentage,
        operator: operator
        })
    else
      # shows this in server log
      puts "Failed to create oilfield! No operator with name #{operator_name}"
      nil
    end
  end




end
