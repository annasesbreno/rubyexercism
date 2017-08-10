class Post
	attr_accessor :title, :desc, :content, :tags

	def initialize(title, desc, content, tags)
		@title = title
		@desc = desc
		@content = content
		@tags = tags
	end
end
