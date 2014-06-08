require 'ethology'

# == Schema Information
#
# Table name: beasts
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  diet           :string(255)
#  light_ethology :string(255)
#  habitat        :string(255)
#  size           :string(255)
#  description    :text
#  created_at     :datetime
#  updated_at     :datetime
#  image_filename :string(255)

class Beast < ActiveRecord::Base
  validates :name, presence: true
  validates :diet, inclusion: { in: Diets::ALL }
  validates :light_ethology, inclusion: { in: LightEthologies::ALL }
  validates :size, inclusion: { in: Sizes::ALL }

  def description_paragraphs
    if self.description
      self.description.split("\n\n")
    else
      []
    end
  end
end
