class TwitterAccount < ApplicationRecord
  # Associations
  has_many :tweets
  belongs_to :user

  # Validations
  validates :username, uniqueness: true
end
