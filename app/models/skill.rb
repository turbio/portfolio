class Skill < ActiveRecord::Base
	has_and_belongs_to_many :projects
	belongs_to :category

	def to_s
		name
	end
end
