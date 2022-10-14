require './lib/re_post_resource'

class RePostsController < SecuredApplicationController
  # Single Resposibility Principle
  # Concerns encapsulate verbose methods
  include Likes::Parameterizer

  def create
    @post = Post.find(likes_params)
    @post = ::RePostResource.call(
      resource: @post,
      owner: current_user.id,
      resource_object: Post)
    create_response(@post)
  end

end
