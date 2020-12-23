class PostsTouchService < ApplicationService
  attr_reader :post

  def initialize(post_id)
    @post = Post.find_by(id: post_id)
  end

  def call
    @post&.update(touched: true)
    ActionCable.server.broadcast 'just_for_fun_channel', message: @post.to_json
  end
end