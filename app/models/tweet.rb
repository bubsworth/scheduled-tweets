class Tweet < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :twitter_account

  # Validations
  validates :body, length: { minimum: 1, maximum: 280 }
  validates :publish_at, presence: true


  # Methods

  after_initialize do
    self.publish_at ||= 24.hour.from_now
  end 

  def published?
    tweet_id?
  end

  def publish_to_twitter!
    tweet = twitter_account.client.update(body)
    update(tweet_id: tweet.id)
  end
end
