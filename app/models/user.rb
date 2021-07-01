class User < ApplicationRecord
  has_many :user_devices
  validates :name, presence: true
end
