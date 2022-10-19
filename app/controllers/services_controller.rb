class ServicesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :is_user_authorized?, except: [:show, :index]
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /serivices/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

   # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)
    if @service.save
      if params[:service][:picture].present?
        @service.picture.attach(params[:service][:picture])
      end
      flash.notice = "The service record was created successfully."
      redirect_to @service
    else
      flash.now.alert = @service.errors.full_messages.to_sentence
      render :new
    end
  end
  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    if @service.update(service_params)
      if params[:service][:picture].present?
        @service.picture.attach(params[:service][:picture])
      end
      flash.notice = "The service record was updated successfully."
      redirect_to @service
    else
      flash.now.alert = @service.errors.full_messages.to_sentence
      render :edit
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_service
    @service = Service.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def service_params
    params.require(:service).permit(:name, :description, :kind, :phone_number, :url, :picture)
  end

  def catch_not_found(e)
    Rails.logger.debug("We had a not found exception.")
    flash.alert = e.to_s
    redirect_to services_path
  end
end

end
