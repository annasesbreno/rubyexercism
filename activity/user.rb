class User
	attr_accessor :name, :company, :age
	def initialize(name, company, age)
		@name = name
		@company = company
		@age = 21
		@posts = []
	end

	def add_post(post)
		title = post[:title]
		desc = post[:desc]		
		content = post[:content]
		tags = post[:tags]
		post = Post.new(title, desc, content, tags)
		@posts << post
	end

	def my_posts(summary)
		@posts.each_with_index {|post, i|}
		puts "#{i+1} Title: #{post.title}"
		puts "Desc #{post.desc}"
	end

	def my_posts(detailed)
		@posts.each_with_index {|post, i|}
		puts "#{i+1} Title: #{post.title}"
		puts "Desc #{post.desc}"
		puts "Content #{post.content}"
		puts "Tags #{post.tags}"
	end
	
	def about_me
		puts "Name: #{name}"
		puts "Company: #{company}"
		puts "Age: #{age}"
	end
end
