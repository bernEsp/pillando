module Likes
  module Parameterizer
    extend ActiveSupport::Concern

    private
      # Only allow a list of trusted parameters (content) through.
      def likes_params
        params.require(:post_id)
      end

  end
end
