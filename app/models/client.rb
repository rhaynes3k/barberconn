class Client < ActiveRecord::Base
  belongs_to :barber
  has_secure_password
end
