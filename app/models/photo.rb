class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :landmark
	validates :title, :caption, presence: true
	acts_as_commentable
end
