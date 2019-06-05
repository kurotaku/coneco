class StaticPagesController < ApplicationController
	def home
		@users = User.all

		@posts = Post.all
		@post = Post.new
	end
end
