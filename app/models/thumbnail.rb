class Thumbnail < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :prototype
  validates :image, presence: true
  enum role: %i(main sub)
end
