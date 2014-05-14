class Player < ActiveRecord::Base
  belongs_to :team

  has_many :sponsors, through: :contracts

  has_many :contracts

    def add_sponsor(value, valid_sponsor_name)
    #
    sponsor = Sponsor.find_by_name(sponsor_name)

      # if ingredient is found...
      if sponsor
      #CHECK THIS SHIT OUT
      self.contracts << Contract.create({
        value: value,
        sponsor: sponsor
        })
      else
      # shows this in server log
      puts "Failed to create yo player! No sponsor with name #sponsor_name}"
      nil
      end
    end

end



