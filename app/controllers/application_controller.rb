# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :authenticate_api_v1_user!, unless: :devise_controller?

  include DeviseTokenAuth::Concerns::SetUserByToken
end
