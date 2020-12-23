class JustForFunChannel < ApplicationCable::Channel
  def subscribed
    stream_from "just_for_fun_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
