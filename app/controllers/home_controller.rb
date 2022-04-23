class HomeController < ApplicationController
  def index
    return false if current_user.present?

    user = User.create!(uuid: SecureRandom.uuid)
    cookies[:user_id] = user.uuid
  end
end
