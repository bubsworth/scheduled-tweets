class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    return if tweet.published?

    #When someone reschedules their tweet to the future
    return if tweet.publish_at > Time.current

    tweet.publish_to_twitter!
  end
end
