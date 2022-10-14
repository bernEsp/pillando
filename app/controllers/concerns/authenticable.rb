module Authenticable
  extend ActiveSupport::Concern

  included do
    before_action :require_user!
  end

  private

    def require_user!
      return if current_user
      redirect_to root_path, flash: { error: 'Please login!' }
    end
end
