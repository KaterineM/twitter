class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.integer :tweet_or_id
      t.integer :tweet_rp_id

      t.timestamps
    end
  end
end
