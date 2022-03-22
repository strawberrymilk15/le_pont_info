class Blog < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  has_many_attached :images
  has_one_attached :eyecathing
  belongs_to :admin, optional: true
end
