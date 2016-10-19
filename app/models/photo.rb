class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :landmark
	acts_as_commentable
end
