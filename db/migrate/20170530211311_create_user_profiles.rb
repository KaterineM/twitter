class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :bio
      t.string :location
      t.string :color

      t.timestamps
    end
  end
end
