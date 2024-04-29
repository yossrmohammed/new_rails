class AuthorsController < ApplicationController
    def index 
        @authors = Author.all
    end
    def new 
        @author = Author.new
     end
     def create
        @author = Author.new({name: params[:author][:name], email: params[:author][:email],phone_number: params[:author][:phone_number],dob: params[:author][:dob]})
        
        if @author.save
            redirect_to authors_url(@author)
        else
            render :new, status: 422
        end
     end
     def show
        @author = Author.find(params[:id])
        
      end
      def destroy
        @author = Author.find(params[:id]);
        @author.destroy
        redirect_to authors_url(@author)
      end
      def edit
        @author = Author.find(params[:id])
      end
      def update
       @author = Author.find(params[:id])
       if @author.update({name: params[:author][:name], email: params[:author][:email],phone_number: params[:author][:phone_number],dob: params[:author][:dob]})
       redirect_to authors_url(@author)
      else
       render :edit , status: 442
      end
      end

        
 end