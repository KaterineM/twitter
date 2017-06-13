class CreateListMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :list_members do |t|
      t.references :list, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
