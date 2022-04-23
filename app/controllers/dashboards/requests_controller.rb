module Dashboards
  class RequestsController < ApplicationController
    def destroy
      reqs = current_user.user_requests
      reqs.each(&:destroy!)
      respond_to do |format|
        format.turbo_stream
      end
    end
  end
end
