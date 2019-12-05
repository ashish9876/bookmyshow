class Movie < ApplicationRecord
	has_one_attached :avatar
  belongs_to :user
  belongs_to :theatre

  validates :name, presence: :true
	resourcify
end
