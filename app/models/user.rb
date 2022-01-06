class User < ApplicationRecord
    has_one :profile_setting, dependent: :destroy
    has_many :games
    has_many :in_game_friends, through: :games
    has_and_belongs_to_many :friends
end
