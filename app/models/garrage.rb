class Garrage < ApplicationRecord
  has_many :stuffs
  belongs_to :user

  mount_uploader :image, AvatarUploader
end
