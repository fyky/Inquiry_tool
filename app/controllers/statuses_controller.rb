class StatusesController < ApplicationController
  before_action :set_status, only: [:edit, :update, :destroy]

  def index
    @status = Status.new
    @statuses = Status.all
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to statuses_path
    else
      @statuses = Status.all
      render :index
    end
  end

  def edit
  end

  def update
    if @status.update(status_params)
      redirect_to statuses_path
    else
      render :edit
    end
  end

  def destroy
    @status.destroy
    redirect_to statuses_path
  end

  private

    def set_status
      @status = Status.find(params[:id])
    end

    def status_params
      params.require(:status).permit(:name)
    end
end
