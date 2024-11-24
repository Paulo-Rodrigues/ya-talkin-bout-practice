class Team < ApplicationRecord
  has_many :players, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy
end
