class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates_presence_of :password

  def self.authenticate(email, password)
    User.find_by(email: email, password: password)
  end
end
