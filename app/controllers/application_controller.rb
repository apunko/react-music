class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token

  def index
    @logging_status = !session[:login].nil?
  end

  def sing_in
    session[:login] = user_params[:login]
    login = session[:login]
    data = {login: login}
    render :json => data, :status => :ok
  end

  def sing_out
    reset_session
    data = {logStatus: 'Logged out'}
    render :json => data, :status => :ok
  end

  private
    def user_params
      params.require(:user_inf).permit(:login, :password)
    end
end
