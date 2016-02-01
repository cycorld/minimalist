class Garrage < ApplicationRecord
	has_many :stuffs
  belongs_to :user
end
