require './lib/like_resource'

class LikesController < SecuredApplicationController
  # Single Resposibility Principle
  # Concerns encapsulate verbose methods
  include Likes::Parameterizer

  def create
    @post = Post.find(likes_params)
    @post = ::LikeResource.call(@post)
    create_response(@post)
  end
end
