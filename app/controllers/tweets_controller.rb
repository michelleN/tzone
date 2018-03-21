class TweetsController < ApplicationController

  http_basic_authenticate_with name: 'user', password: 'password',
    except: [:index, :show] # todo: replace with devise
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)

    if @tweet.save
      redirect_to @tweet
    else
      render 'new'
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    redirect_to tweets_path
  end

  private
    def tweet_params
      params.require(:tweet).permit(:text)
    end
end
