class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :thumbnails, dependent: :delete_all
  has_many :comments, dependent: :delete_all
  has_many :likes, dependent: :delete_all

  validates :title, :catchcopy, :concept, presence: true

  accepts_nested_attributes_for :thumbnails
  acts_as_taggable_on :labels
end
