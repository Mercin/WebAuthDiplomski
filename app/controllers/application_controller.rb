class ApplicationController < ActionController::API

  def indentify
  	@keyfile = Keyfile.find(params[:filename])
  	render json: @keyfile	
  end

end
