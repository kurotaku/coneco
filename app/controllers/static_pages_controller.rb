class StaticPagesController < ApplicationController
	def home
		@users = User.all

		@posts = Post.all
		@post = Post.new
    @post.pictures.build
	end
end
