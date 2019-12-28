class CommentsController < ApplicationController
end

def create
  Comments.create(comment_params)
  redirect_to "/tweets/#{comment.tweet.id}"
end

private
def comment_params
  params.requier(:comments).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
end