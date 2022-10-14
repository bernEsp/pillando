class ApplicationController < ActionController::Base
  # Single Resposibility Principle
  # Concerns encapsulate verbose methods
  # Authentication Layer
  include Passwordless::ControllerHelpers
  include DefaultResponses

  helper_method :current_user

  private

    def current_user
      @current_user ||= authenticate_by_session(User)
    end
end
