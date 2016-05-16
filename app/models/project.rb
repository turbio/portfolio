class Project < ActiveRecord::Base
	#correctly capitalize the names of projects
	def name
		read_attribute(:name).split.map do |w| w.capitalize end.join ' ' if has_attribute? :name

	end

	#capitalize first letter and add period
	def description
		read_attribute(:description).capitalize + '.' if has_attribute? :description
	end
end
