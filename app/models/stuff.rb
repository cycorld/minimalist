class Stuff < ApplicationRecord
	belongs_to :garrage
  has_many :comments
end
