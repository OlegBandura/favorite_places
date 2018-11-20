class Place < ApplicationRecord
  mount_uploader :image_path, ImageUploader
  acts_as_votable
end
