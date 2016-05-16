module MainHelper
	def category_tree(top_categories)
		top_categories.map do |category|
			content_tag(:ul, content_tag(:h2, category.name) + if category.subcategories.length > 0
				category_tree(category.subcategories)
			else
				category.skills.map do |skill| content_tag(:li, skill) end.join;
			end.html_safe)
		end.join('').html_safe
	end
end
