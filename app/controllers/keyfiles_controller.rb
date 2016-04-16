require 'requestinfo'
class KeyfilesController < ApplicationController
  before_action :set_keyfile, only: [:show, :update, :destroy]

  # GET /keyfiles
  # GET /keyfiles.json
  def index
    @keyfiles = Keyfile.all

    render json: @keyfiles
  end

  # GET /keyfiles/1
  # GET /keyfiles/1.json
  def show
    render json: @keyfile
  end
  
  def identify
  	@keyfile = Keyfile.where("filename = ?", params[:filename]).take
  	#render json: @keyfile
  	if @keyfile.nil? then render text: "Nema nis :("
  	else render json: @keyfile
  	end
  end


  # POST /keyfiles
  # POST /keyfiles.json
  def create
    @keyfile = Keyfile.new(keyfile_params)

    if @keyfile.save
      render json: @keyfile, status: :created, location: @keyfile
    else
      render json: @keyfile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /keyfiles/1
  # PATCH/PUT /keyfiles/1.json
  def update
    @keyfile = Keyfile.find(params[:id])

    if @keyfile.update(keyfile_params)
      head :no_content
    else
      render json: @keyfile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /keyfiles/1
  # DELETE /keyfiles/1.json
  def destroy
    @keyfile.destroy

    head :no_content
  end

  private

    def set_keyfile
      @keyfile = Keyfile.find(params[:id])
    end

    def keyfile_params
      params.require(:keyfile).permit(:filename, :url)
    end

end
