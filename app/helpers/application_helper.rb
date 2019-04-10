module ApplicationHelper
	def menu(description, path)
		content_tag(:li) do
			link_to description, path
		end
	end

	def resume(text)
		truncate(text, length: 300)
	end
end
