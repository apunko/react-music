class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def sing_in
    session[:login] = params[:user_inf][:login]
    if session[:login] != nil

    end
    login = session[:login]
    render json: login
  end

  def sing_out
    reset_session
    render json: "Sing out"
  end

  private

    def user_params
      params.require(:user_inf).permit(:login, :password)
    end
end
