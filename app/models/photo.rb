class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :landmark


	has_reputation :votes, source: :user, aggregated_by: :sum
	
	validates :title, :caption, presence: true
	acts_as_commentable
end
