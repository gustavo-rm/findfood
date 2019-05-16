module ApplicationHelper
	def menu(description, path)
		content_tag(:li, class:"nav-item") do
			link_to description, path, class:"nav-link"
		end
	end

	def selected_title(title, word)
    if ! word.blank?
      title.gsub(word, "<b>#{word}</b>")
    else
      title
    end
  end
end
