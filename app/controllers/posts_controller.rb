class PostsController < ApplicationController
 def index 
    @posts = Post.all
    #puts @posts
 end
 def new 
    @post = Post.new
 end
 def create
    @post = Post.new({title: params[:post][:title], content: params[:post][:content]})
    #puts "+++ #{params}"
    if @post.save
        redirect_to posts_url(@post)
    else
        render :new, status: 422
    end
 end
 def show
   @post = Post.find(params[:id])
   
 end
 def destroy
   @post = Post.find(params[:id]);
   @post.destroy
   redirect_to posts_url(@post)
 end
 def edit
   @post = Post.find(params[:id])
 end
 def update
  @post = Post.find(params[:id])
  if @post.update({title: params[:post][:title], content: params[:post][:content]})
  redirect_to posts_url(@post)
 else
  render :edit , status: 442
 end
 end
end