class JustForFunJob
  include Sidekiq::Worker

  def perform(post_id)
    PostsTouchService.call(post_id)
  end
end