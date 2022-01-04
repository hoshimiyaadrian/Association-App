class User < ApplicationRecord
    has_one :profile_setting, dependent: :destroy
end
