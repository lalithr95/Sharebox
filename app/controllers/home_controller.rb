class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		@folders = current_user.folders.order('name DESC')
  		@assets = current_user.assets.order('uploaded_file_file_name DESC')
  	end
  end
end
