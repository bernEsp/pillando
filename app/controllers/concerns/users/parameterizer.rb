module Users
  module Parameterizer
    extend ActiveSupport::Concern

    private
      # Only allow a list of trusted parameters (email, username) through.
      def user_params
        params.require(:user).permit([:username, :email])
      end

  end
end
