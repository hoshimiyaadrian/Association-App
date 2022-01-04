class CreateProfileSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :profile_settings do |t|
      t.string :activity_status
      t.string :show_profile
      t.string :message_permission
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
