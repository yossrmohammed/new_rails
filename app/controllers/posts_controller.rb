class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
      @post = Post.find(params[:id])
    end
    def new
      @post = Post.new
      render :new  # Render the new.html.erb view with the initialized @post object
    end
    
      
    def create
      @post = Post.new(post_params)
      
      if @post.save
        redirect_to posts_url(@post)
      else
        # Inspect errors for debugging purposes
        puts @post.errors.full_messages.inspect
        render :new, status: 422
      end
    end
    
        private
      
        def post_params
          params.require(:post).permit(:title, :content)
        end
      end
      



