module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(uuid: cookies[:user_id])
  end
end
