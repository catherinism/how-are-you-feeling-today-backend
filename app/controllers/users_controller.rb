class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          flash[:message] = "Successfully Signed Up!"
          redirect_to guides_path
        else
          flash[:message] = "#{@user.errors.full_messages.to_sentence}."
          render :new
        end
      end
    
      private
    
      def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
      end
    
end
