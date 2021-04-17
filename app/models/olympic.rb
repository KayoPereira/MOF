class Olympic < ApplicationRecord
  belongs_to :user
  has_many :responsables

  validates :title, presence: true, length: { in: 6..150 }
  validates :description, presence: true, length: { in: 6..300 }
  validates :start_registration, presence: true
  validates :end_registration, presence: true
  validates :image, presence: true
end
