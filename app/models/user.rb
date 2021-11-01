class User < ApplicationRecord
  # Associations
  has_many :twitter_accounts
  has_secure_password

  # Validations
  validates :email, presence: :true, format: { 
    with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i , 
    message: "Must be a valid email address." 
  }
end
