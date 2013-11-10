class HomeController < ApplicationController
  def index
  	if current_user
		redirect_to '/photos#index'
	end
  end
end
