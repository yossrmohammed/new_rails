class PostsController < ApplicationController
 def index 
    @posts = Post.all
    #puts @posts
 end
 def new 
    @post = Post.new
 end
 def create
    @post = Post.new({title: params[:title], content: params[:content]})
    #puts "+++ #{params}"
    if @post.save
        redirect_to posts_url(@post)
    else
        render :new, status: 422
    end
 end

 def 
end