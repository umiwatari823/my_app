class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(tweet_id: @tweet.id)
    like.save
    respond_to do |format|
      format.html { redirect_to request.referrer || root_url }
      format.js
    end
  end

  def unlike
    like = current_user.likes.find_by(tweet_id: @tweet.id)
    like.destroy
    respond_to do |format|
      format.html { redirect_to request.referrer || root_url }
      format.js
    end
  end

  private

  def set_variables
    @tweet = Tweet.find(params[:tweet_id])
    @id_name = "#like-link-#{@tweet.id}"
  end
end
