class UsersController < ApplicationController
    def index
        @user = User.all
    end

    def show
        
    end
    
    def new
        @user = User.new
    end
    
    def create
        @User = Object.new(params[:User])
        if @User.save
          flash[:success] = "Object successfully created"
          redirect_to @User
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end
    
    
    
end
