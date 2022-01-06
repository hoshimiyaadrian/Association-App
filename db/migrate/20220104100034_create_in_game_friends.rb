class CreateInGameFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :in_game_friends do |t|
      t.string :in_game_username
      t.string :in_game_status

      t.timestamps
    end
  end
end
