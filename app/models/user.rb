class User < ApplicationRecord
  has_secure_password

  # validations
  validates :email, presence: :true, format: { 
    with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i , 
    message: "Must be a valid email address." 
  }
end
