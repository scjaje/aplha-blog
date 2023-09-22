class ApplicationController < ActionController::Base

  # makes it available to views, too
  helper_method :current_user, :logged_in?
  def current_user
    # returns @current_user if the User.find has been validated.
    # If not, it will query the database.
    # This stops unnecessary querying.
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # !! turns current user into a bool
    !!current_user
  end

end
