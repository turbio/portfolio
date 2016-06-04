class Project < ActiveRecord::Base
	has_and_belongs_to_many :skills

	#correctly capitalize the names of projects
	def name
		read_attribute(:name).split.map do |w| w.capitalize end.join ' ' if read_attribute(:name)
	end

	#capitalize first letter and add period
	def description
		read_attribute(:description).capitalize + '.' if read_attribute(:description)
	end
end
