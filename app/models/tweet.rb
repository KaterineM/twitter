class Tweet < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many(
    :tweets,
    join_table: "replies",
    foreign_key: "tweet_or_id",
    association_foreign_key: "tweet_rp_id"
  )
end
