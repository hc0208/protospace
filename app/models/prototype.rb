class Prototype < ActiveRecord::Base
  has_many :thumbnails
  belongs_to :user
  accepts_nested_attributes_for :thumbnails
  has_many :comments
end
