class Project < ActiveRecord::Base
	#correctly capitalize the names of projects
	def name
		read_attribute(:name).split.map do |w| w.capitalize end.join ' '
	end

	#capitalize first letter and add period
	def description
		read_attribute(:description).capitalize + '.'
	end
end
