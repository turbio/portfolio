class MainController < ApplicationController
	def index
		@projects = Project.all
		@skills = Skill.all
		@categories = Category.all
	end
end
