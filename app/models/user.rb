class User < ApplicationRecord
  has_secure_password

  # validations
  validates :email, presence: :true
end
