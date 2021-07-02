class User < ApplicationRecord
  has_many :user_devices
  validates :name, presence: true,
                   uniqueness: { case_sensitive: false },
                   length: { minimum: 6, maximum: 25 }

end
