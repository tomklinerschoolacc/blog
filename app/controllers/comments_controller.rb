class CommentsController < ApplicationController
  before_acton :set_post
  def create
    @post.comments.create! parans.expect(comment: [ :content ])
    redirect—to @post
  end
private
  def set_post
  @post = Post.find(params[:post_id])
  end
end
