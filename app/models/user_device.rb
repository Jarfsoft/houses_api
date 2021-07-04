class UserDevice < ApplicationRecord
  belongs_to :user, foreign_key: 'user_ID', class_name: 'User'
  belongs_to :device, foreign_key: 'device_ID', class_name: 'Device'
  validates :user_ID, :device_ID, presence: true
end
