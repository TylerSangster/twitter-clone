class TweetsController < ApplicationController

	def create
	  @tweet= Tweet.new(tweet_params)
	  @tweet.user_id = current_user.id
	 
	  if @tweet.save
	      redirect_to current_user 
	  else
	      flash[:error] = "Problem!"
	      redirect_to current_user
	  end
	end

	def index
		@tweets = Tweet.all include: :user
    	@tweet = Tweet.new
	end

	

##########################
  private
    def tweet_params
      params.require(:tweet).permit(:content, :userid)
    end

end
