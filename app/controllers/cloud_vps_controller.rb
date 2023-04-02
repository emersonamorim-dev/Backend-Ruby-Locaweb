class CloudVpsController < ApplicationController
  def index
    @cloudvps = CloudVps.all
    render json: @cloudvps
  end

  def show
    @cloudvps = CloudVps.find(params[:id])
    render json: @cloudvps
  end

  def create
    @cloudvps = CloudVps.new(cloudvps_params)
    if @cloudvps.save
      render json: @cloudvps, status: :created
    else
      render json: @cloudvps.errors, status: :unprocessable_entity
    end
  end

  def update
    @cloudvps = CloudVps.find(params[:id])
    if @cloudvps.update(cloudvps_params)
      render json: @cloudvps
    else
      render json: @cloudvps.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @cloudvps = CloudVps.find(params[:id])
    @cloudvps.destroy
  end

  # Only allow a list of trusted parameters through.
  def cloudvps_params
    params.require(:cloudvps).permit(
      :plan_id,
      :hostname,
      :password,
      :email,
      :phone
    )
  end
end
