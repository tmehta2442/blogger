class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		
		if @post.save
			redirect_to @post
		else
			render "new"
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(params[:id])
			redirect_to @post
		else
			render "edit"
		end
	end


	# private
	# 	def post_params
	# 		params.require(:post).permit(:title, :text)
	# 	end

end
