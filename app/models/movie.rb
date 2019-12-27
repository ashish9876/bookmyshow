class Movie < ApplicationRecord
	has_one_attached :avatar
	resourcify

  belongs_to :user
  belongs_to :theatre, optional: :true

  validates :name, presence: :true
end
