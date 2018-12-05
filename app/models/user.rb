class User < ApplicationRecord
  validates :name, presence:true, uniqueness: true
  has_secure_password
  # has_secure_password(options = {})
  # Adds methods to set and authenticate against a BCrypt password. 
  # This mechanism requires you to have a password_digest attribute.
  # The following validations are added automatically:
  #  1.Password must be present on creation
  #  2.Password length should be less than or equal to 72 bytes
  #  3.Confirmation of password (using a password_confirmation attribute)
end
