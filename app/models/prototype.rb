class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :thumbnails
  has_many :comments
  has_many :likes

  accepts_nested_attributes_for :thumbnails
  acts_as_taggable_on :labels
end
