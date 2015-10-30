class Thumbnail < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :prototype
  enum role: [:main, :sub]
end
