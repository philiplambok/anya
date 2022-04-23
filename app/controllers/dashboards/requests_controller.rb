module Dashboards
  class RequestsController < ApplicationController
    def destroy
      reqs = current_user.user_requests
      reqs.each do |req|
        req.destroy!
      end
      respond_to do |format|
        format.turbo_stream
      end
    end
  end
end
