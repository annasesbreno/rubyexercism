require 'byebug'
require 'pry-byebug'

require_relative 'user'
require_relative 'post'

user = User.new('Anna', 'inDinero', 19)
user.add_post({ title: 'KS buh?', desc: 'Learn how to be me?', content: 'Sample Content', tags: ['Education', 'Conyo', 'Boggs']}) 
user.add_post({ title: 'Ruby Pickaxe', desc: 'Learn how to ruby.', content: 'Table of Contents. Lorem Ipsum', tags: ['Education', 'Ruby', 'Matz']}) 
user.add_post({ title: 'Javascript the Good Parts', desc: 'JS the Best', content: 'Javascript Table of Contents. Lorem Ipsum', tags: ['Education', 'Javascript', 'Frontend']})

binding.pry

foo