class HomeController < ApplicationController
  def index
    if current_user.present?
      @requests = current_user.user_requests
      return false
    end

    user = User.create!(uuid: SecureRandom.uuid)
    cookies[:user_id] = user.uuid
    @requests = user.user_requests
  end
end
