class UsersController < ApplicationController

  def login
    if request.post?
      if @user = User.find_by_email(params[:user][:email])
        if @user.authenticate(params[:user][:password])
          session[:user_id] = @user.id
          redirect_to dashboard_path
        else
          flash.now[:error] = "Your password is incorrect."
        end
      else
        flash.now[:error] = "There aren't any registered users with that email."
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

end
