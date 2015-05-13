class UserFriendshipController < ApplicationController

	private
	def friendship_params
		params.require(:users).permit(:friend, :user_id, :friend_id)
	end
end
