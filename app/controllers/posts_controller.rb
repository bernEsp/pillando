class PostsController < SecuredApplicationController
  # Single Resposibility Principle
  # Concerns encapsulate verbose methods
  include Posts::Parameterizer

  # GET ALL the existing Pios /posts or /posts.json
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  # GET new pio object /posts/new
  def new
    @post = Post.new
  end

  # POST create current user Pio /posts or /posts.json
  def create
    @post = Post.new( post_current_user_params )
    @post.user_id = @current_user.id
    create_response(@post)
  end
end
