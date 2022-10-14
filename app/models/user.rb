class User < ApplicationRecord
  # Validations
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  # Authentication Layer
  passwordless_with :email

  # Pios
  has_many :posts
end
