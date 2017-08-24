class UsersController < ApplicationController
    protect_from_forgery with: :exception
  
def new
end

def create
  user = User.new(user_params)
  if user.save
    session[:user_id] = user.id
    redirect_to '/'
  else
    redirect_to '/signup'
  end

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

# Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

end
end

