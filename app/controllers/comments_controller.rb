class CommentsController < ApplicationController
  http_basic_authenticate_with name: 'user', password: 'password', only: :destroy # todo: replace with devise
  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.create(comment_params)
    redirect_to tweet_path(@tweet)
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.find(params[:id])
    @comment.destroy
    redirect_to tweet_path(@tweet)
  end

  private
    def comment_params
      params.require(:comment).permit(:author, :body)
    end
end
