class News < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  
  has_one_attached :image
  belongs_to :admin, optional: true
end
