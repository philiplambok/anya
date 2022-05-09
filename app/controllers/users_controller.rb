class UsersController < ApplicationController
  def edit; end

  def update
    if current_user.update(uuid: params[:user][:uuid])
      cookies[:user_id] = current_user.uuid
      redirect_to root_path
    else
      flash.now[:error] = 'The URL has been taken'
      render :edit, status: :unprocessable_entity
    end
  end
end
