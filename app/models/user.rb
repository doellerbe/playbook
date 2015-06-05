class User < ActiveRecord::Base
  validates :name, presence: true, length: {
    minimum: 2,
    maximum: 30,
    too_short: "You must have at least %{count} characters",
    too_long: "You must have at most %{count} characters"
  }
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: { in: 6..20 }
  validates :administrator, presence: true
  validates :moderator, presence: true

  has_secure_password
end
