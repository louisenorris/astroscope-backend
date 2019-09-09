class User < ApplicationRecord
  belongs_to :starsign
  has_secure_password
end
