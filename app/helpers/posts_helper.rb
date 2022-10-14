module PostsHelper

  def re_pio_link(post)
    return if post.user_id == current_user&.id
    link_to 'RePio', re_posts_create_path(params: {post_id: post.id}),
     class: 'is-link'
  end

end
