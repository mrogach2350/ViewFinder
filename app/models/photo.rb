class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :landmark

	has_reputation :votes, source: :user, aggregated_by: :sum
end
