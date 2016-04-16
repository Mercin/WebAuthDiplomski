require 'keyfile'
class RequestinfosController < ApplicationController
  before_action :set_requestinfo, only: [:show, :update, :destroy]


  
  def authorize
    @requestinfo = Requestinfo.create(requestinfo_params)
	@keyfile = Keyfile.where("filename = ?", @requestinfo["filename"]).take
	
	if @keyfile.nil? then 
			 
			render plain: "NO."
		
	else 
			render plain: "YAY."

		
	end    

  end


  # GET /requestinfos
  # GET /requestinfos.json
  def index
    @requestinfos = Requestinfo.all

    render json: @requestinfos
  end

  # GET /requestinfos/1
  # GET /requestinfos/1.json
  def show
    render json: @requestinfo
  end

  # POST /requestinfos
  # POST /requestinfos.json
  def create
    @requestinfo = Requestinfo.new(requestinfo_params)

    if @requestinfo.save
      render json: @requestinfo, status: :created, location: @requestinfo
    else
      render json: @requestinfo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requestinfos/1
  # PATCH/PUT /requestinfos/1.json
  def update
    @requestinfo = Requestinfo.find(params[:id])

    if @requestinfo.update(requestinfo_params)
      head :no_content
    else
      render json: @requestinfo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requestinfos/1
  # DELETE /requestinfos/1.json
  def destroy
    @requestinfo.destroy

    head :no_content
  end

  private

    def set_requestinfo
      @requestinfo = Requestinfo.find(params[:id])
    end

    def requestinfo_params
      params.require(:requestinfo).permit(:filename, :key)
    end
end
