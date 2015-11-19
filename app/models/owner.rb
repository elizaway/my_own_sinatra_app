class Owner < ActiveRecord::Base
  has_many :ownerships
  has_many :jewels, through: :ownerships
end
