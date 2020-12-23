class PostDecorator < Draper::Decorator
  delegate_all

  def title_with_updated_at
    [title, updated_at].join('||')
  end
end
