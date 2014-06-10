class User < ActiveRecord::Base
  before_validation :downcase_email

  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates :email, uniqueness: true
  validates_confirmation_of :password

  has_secure_password

  def downcase_email
    self.email = email.downcase_email
  end
end
