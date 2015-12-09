class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		@folders = current_user.folders.order('name DESC')
  		@assets = current_user.assets.order('uploaded_file_file_name DESC')
  	end
  end

  def browse
  	@current_folder = current_user.folders.find(params[:folder_id])
  	if @current_folder
  		@folders = @current_folder.children
  		@assets = current_user.assets.order('uploaded_file_file_name DESC')
  		render action: 'index'
  	end
  end
end
