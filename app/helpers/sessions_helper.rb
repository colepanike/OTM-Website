module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Logs out the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  # Returns the current user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

    # Returns true if the given user is the current user.
  def current_user?(user)
    user == current_user
  end

  # Returns true if user is currently logged in
  def logged_in?
    !current_user.nil?
  end
end
