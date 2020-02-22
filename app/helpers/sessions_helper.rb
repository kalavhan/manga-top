module SessionsHelper
  def log_in(user)
    cookies.signed[:user_id] = user.id
    current_user = user
  end

  def log_out
    cookies.delete(:user_id)
    @@current_user = nil
  end

  def current_user=(user)
    @@current_user = user
  end

  def logged_in?
    !current_user.nil?
  end

  def current_user
    @@current_user ||= User.find_by(id: cookies.signed[:user_id])
  end

  def all_categories
    Category.all
  end
end
