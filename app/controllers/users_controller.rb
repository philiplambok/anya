class UsersController < ApplicationController
  def edit; end

  def update
    current_user.update!(uuid: params[:user][:uuid])
    cookies[:user_id] = current_user.uuid
    redirect_to root_path
  end
end
