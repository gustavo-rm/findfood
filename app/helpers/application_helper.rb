module ApplicationHelper
<<<<<<< HEAD
=======
	def menu(description, path)
		classe = current_page?(path) ? 'active' : ''
		content_tag(:li, class: classe) do
			link_to description, path
		end
	end

	def resume(text)
		truncate(text, length: 300)
	end
>>>>>>> 27eb930ff04d8e85525b40e38638b161ab207de3
end
