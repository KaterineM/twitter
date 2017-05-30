class AddAvatarToUserProfiles < ActiveRecord::Migration[5.1]
  def change
    add_attachment :user_profiles, :avatar
  end
end
