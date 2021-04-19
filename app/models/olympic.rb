class Olympic < ApplicationRecord
  
  has_many :responsable

  validates :title, presence: true, length: { in: 6..150 }
  validates :description, presence: true, length: { in: 6..300 }
  validates :start_registration, presence: true
  validates :end_registration, presence: true
  validates :image, presence: true
  validates :edition, presence: true
end
