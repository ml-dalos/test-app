module PostsHelper
  def post_image
    variant = @post.image.variant(resize: '400x400')
    return '' if variant.blank?

    image_tag variant
  end
end
