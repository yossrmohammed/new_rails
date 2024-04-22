class PostsController < ApplicationController
 def index 
    #post = Post.create({title: "t2", content: "content2"})
    posts = Post.all
    puts posts.each {
        |post|
        puts post.attributes
    }
 end
end