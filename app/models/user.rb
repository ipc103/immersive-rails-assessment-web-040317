class User < ApplicationRecord
  has_secure_password

  # password, #password=, #password_confirmation, #authenticate
end
