class RequestsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    user = User.find_by(uuid: params[:id])
    return render json: { message: 'ok' } if user.blank?

    UserRequest.create!(
      user: user,
      request_url: request.url,
      request_body: request.body.string,
      request_method: request.method_symbol.to_s.upcase
    )

    render json: { message: 'ok' }
  end
end
