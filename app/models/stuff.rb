class Stuff < ApplicationRecord
  belongs_to :garrage
  has_many :comments

  mount_uploader :image, AvatarUploader
end
