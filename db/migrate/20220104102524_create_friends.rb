class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :friend_name
      t.string :friend_activity_status

      t.timestamps
    end
  end
end
