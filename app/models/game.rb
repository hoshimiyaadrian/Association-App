class Game < ApplicationRecord
  belongs_to :user
  belongs_to :in_game_friend
end
