class SecuredApplicationController < ActionController::Base
  # Single Resposibility Principle
  # Concerns encapsulate verbose methods
  # Authentication Layer
  include Passwordless::ControllerHelpers
  include Authenticable
  include DefaultResponses
  helper_method :current_user

  # Views
  layout 'application'

  private

    def current_user
      @current_user ||= authenticate_by_session(User)
    end

end
