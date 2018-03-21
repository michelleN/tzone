class Tweet < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :text, presence: true,
    length: { maximum: 140 } # add minimum ?
end
