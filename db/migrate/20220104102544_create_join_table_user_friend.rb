class CreateJoinTableUserFriend < ActiveRecord::Migration[6.1]
  def change
    create_join_table :users, :friends do |t|
      t.index [:user_id, :friend_id]
      t.index [:friend_id, :user_id]
    end
  end
end
