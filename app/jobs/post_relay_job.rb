class PostRelayJob < ApplicationJob
  queue_as :default

  def perform(post)
    # Do something later
    ActionCable.server.broadcast "posts", post: render_post(post)
  end

  private
    def render_post(post)
      ApplicationController.renderer.render(partial: 'posts/post', locals: { post: post })
    end
end
