class Skill < ActiveRecord::Base
	belongs_to :category

	def to_s
		name
	end
end
