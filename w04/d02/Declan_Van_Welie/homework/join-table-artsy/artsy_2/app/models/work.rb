class Work < ActiveRecord::Base
  belongs_to :artist

  has_many :subjects, through: :materials

  has_many :materials

  def add_material(material_name, subject)

    subject = Subject.find_by_name(subject)

    if subject

    self.materials << Material.create({
      name: material_name
      subject: subject

      })
  else
    puts "Failed to create work! No work with material #{material_name}"
      nil
  end
end
end
