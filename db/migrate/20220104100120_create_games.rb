class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :publisher
      t.references :user, null: false, foreign_key: true
      t.references :in_game_friend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
