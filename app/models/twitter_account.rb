class TwitterAccount < ApplicationRecord
  # Associations
  has_many :tweets, dependent: :destroy
  belongs_to :user

  # Validations
  validates :username, uniqueness: true

  # Methods
  def client
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.credentials.dig(:twitter, :api_key)
      config.consumer_secret     = Rails.application.credentials.dig(:twitter, :api_key_secret)
      config.access_token        = token
      config.access_token_secret = secret
    end
  end
end
