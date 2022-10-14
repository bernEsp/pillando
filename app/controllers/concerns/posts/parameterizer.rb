module Posts
  module Parameterizer
    extend ActiveSupport::Concern

    private
      # Only allow a list of trusted parameters (content) through.
      def post_params
        params.require(:post).permit(:content)
      end

      # Temporal params with current user
      def post_current_user_params
        post_params.merge( { user_id: current_user.id } )
      end
  end
end
