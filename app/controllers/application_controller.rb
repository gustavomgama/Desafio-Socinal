class ApplicationController < ActionController::API
  before_action :authenticate

  private

  def authenticate
    if request.headers['Authorization'].present? && request.headers['Authorization'].split[1] == 'YWRtaW46YWRtaW4='
      return
    end

    render json: { message: '401 Unathorized' }, status: :unauthorized
  end
end

