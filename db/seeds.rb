# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# mike = User.create(username: "Mikey6", email: "mikey@mail.com")
# val = User.create(username: "StupidBitch", email: "hoesRus@mail.com")
# rick = User.create(username: "Ricky", email: "rick.james@mail.com")
#
# # Posts
#
# mikes_post = Post.create(title: "Mikes first post", content: "This is my very first post")
# vals_post = Post.create(title: "Why are people so studpid?", content: "One of lifes many ?'s")
# ricks_post = Post.create(title: "The world is a scary place", content: "Just look at our president!")
#
# # Assign posts
# mike.posts << mikes_post
# val.posts << vals_post
# rick.posts << ricks_post
#
# # Post Categories
# comedy = Category.create(name: "Comedy")
# horror = Category.create(name: "Horror")
# info = Category.create(name: "Informational")
#
# # Comments
# # mikes_comment = Comment.new(content: "Mike commented on this post")
# mike.comments << Comment.create(content: "Mike commented on this post")
# # mikes_comment.save
#
# # vals_comment = Comment.new(content: "Val commented on this post")
# rick.comments << Comment.create(content: "Val commented on this post")
# # vals_comment.user = val
# # vals_comment.save
#
# # ricks_comment = Comment.new(content: "Rick commented on this post")
# rick.comments << Comment.new(content: "Rick commented on this post")
# # ricks_comment.user = rick
# # ricks_comment.save
#
# mikes_post.comments << ricks_comment
# mikes_post.categories << info
# mikes_post.categories << comedy
#
# vals_post.comments << mikes_comment
# vals_post.categories << horror
#
# ricks_post.comments << vals_comment
# ricks_post.categories << info
