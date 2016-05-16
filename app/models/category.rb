class Category < ActiveRecord::Base
	has_and_belongs_to_many :skills

	has_many :subcategories, class_name: 'Category', foreign_key: 'parent_id'
	belongs_to :parent, class_name: 'Category'

	def self.top_level
		where(parent: nil)
	end

	def to_s
		name
	end
end
