class ViewSettingsController < ApplicationController
  before_action :set_view_setting, only: [:show, :edit, :update, :destroy]

  # GET /view_settings
  # GET /view_settings.json
  def index
    @view_settings = ViewSetting.all
  end

  # GET /view_settings/1
  # GET /view_settings/1.json
  def show
  end

  # GET /view_settings/new
  def new
    @view_setting = ViewSetting.new
  end

  # GET /view_settings/1/edit
  def edit
  end

  # POST /view_settings
  # POST /view_settings.json
  def create
    @view_setting = ViewSetting.new(view_setting_params)

    respond_to do |format|
      if @view_setting.save
        format.html { redirect_to @view_setting, notice: 'View setting was successfully created.' }
        format.json { render :show, status: :created, location: @view_setting }
      else
        format.html { render :new }
        format.json { render json: @view_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /view_settings/1
  # PATCH/PUT /view_settings/1.json
  def update
    respond_to do |format|
      if @view_setting.update(view_setting_params)
        format.html { redirect_to @view_setting, notice: 'View setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @view_setting }
      else
        format.html { render :edit }
        format.json { render json: @view_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /view_settings/1
  # DELETE /view_settings/1.json
  def destroy
    @view_setting.destroy
    respond_to do |format|
      format.html { redirect_to view_settings_url, notice: 'View setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_view_setting
      @view_setting = ViewSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def view_setting_params
      params.require(:view_setting).permit(:directors, :officers, :corporation_information, :programs, :operations, :communications, :finances, :general_information, :new_members, :eve_account_information, :user_id)
    end
end
