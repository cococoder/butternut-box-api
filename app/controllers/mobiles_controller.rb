class MobilesController < ApplicationController
  before_action :set_mobile, only: [:show, :update, :destroy]

  # GET /mobiles
  def index
    @mobiles = Mobile.all

    render json: @mobiles
  end

  # GET /mobiles/1
  def show
    render json: @mobile
  end

  # POST /mobiles
  def create
    @mobile = Mobile.new(mobile_params)

    if @mobile.save
      render json: @mobile, status: :created, location: @mobile
    else
      render json: @mobile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mobiles/1
  def update
    if @mobile.update(mobile_params)
      render json: @mobile
    else
      render json: @mobile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mobiles/1
  def destroy
    @mobile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mobile
      @mobile = Mobile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mobile_params
      params.require(:mobile).permit(:number)
    end
end
