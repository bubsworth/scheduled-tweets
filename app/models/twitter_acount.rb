class TwitterAcount < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :username, uniqueness: true
end
