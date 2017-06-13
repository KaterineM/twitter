class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.integer :like_count
      t.integer :rt_count

      t.timestamps
    end
  end
end
