class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :pass, length: { in: 8..15 }

  attr_accessor :pass
end
