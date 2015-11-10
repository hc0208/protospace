class Prototype < ActiveRecord::Base
  has_many :thumbnails
  belongs_to :user
  has_many :comments
  has_many :likes

  accepts_nested_attributes_for :thumbnails
end
