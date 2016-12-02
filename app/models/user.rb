class User < ApplicationRecord
  has_secure_password
  has_many :debtors
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { in: 6..20 }
end
