class Dialogue < ActiveRecord::Base
  belongs_to :scene
  belongs_to :character
end