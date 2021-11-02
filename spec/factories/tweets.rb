FactoryBot.define do
  factory :tweet do
    user { nil }
    twitter_account { nil }
    body { "MyText" }
    publish_at { "2021-11-02 15:26:23" }
    tweet_id { "MyString" }
  end
end
