module ApplicationHelper
	def title(page_title)
		content_for :title do
			if page_title
				"Life Adviser | #{page_title}"
			else
				"Life Adviser"
			end
		end
	end

	def g(user, klazz, options={})
		options[:default] = 'https://assets.github.com/images/gravatars/gravatar-140.png'

		gravatar_image_tag(user.email, title:user.email, class:klazz, gravatar: options)
	end
end
