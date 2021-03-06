class AppsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_app, only: [:show, :edit, :update, :destroy]

  require 'date'

  # GET /apps
  # GET /apps.json
  def index
    @q = App.ransack(params[:q])
    @apps = @q.result(distinct: true)
  end

  # GET /apps/1
  # GET /apps/1.json
  def show
  
  end

  def search
    render :index
  end

  # GET /apps/new
  def new
    @app = App.new
  end

  # GET /apps/1/edit
  def edit
  end

  # POST /apps
  # POST /apps.json
  def create
    @app = App.new(app_params)

    respond_to do |format|
      if @app.save
        flash[:success] = 'App was successfully saved.'
        format.html { redirect_to @app }
        format.json { render :show, status: :created, location: @app }
      else
        flash[:danger] = 'There was a problem creating the App Catalog Page.'
        format.html { render :new }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apps/1
  # PATCH/PUT /apps/1.json
  def update
    respond_to do |format|
      if @app.update(app_params)
        flash[:success] = 'App was successfully updated.'
        format.html { redirect_to @app }
        format.json { render :show, status: :ok, location: @app }
      else
        flash[:danger] = 'There was a problem updating the App Catalog Page.'
        format.html { render :edit }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apps/1
  # DELETE /apps/1.json
  def destroy
    @app.destroy
    respond_to do |format|
      flash[:success] = 'App was successfully destroyed.'
      format.html { redirect_to apps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params.require(:app).permit(:title, :acronym, :description, :prod_mgr, :prod_owner, :lead_dev, :deploy_date, :link_to_app, :link_to_repo, :link_to_backlog, :user_1, :user_count_1, :user_2, :user_count_2, :user_3, :user_count_3, :user_4, :user_count_4, :user_5, :user_count_5, :user_6, :user_count_6, :user_7, :user_count_7, :user_8, :user_count_8, :responsive, :version, :prog_lang_1, :prog_lang_version, :prog_lang_eol_1, :framework_1, :framework_version, :framework_eol_1, :database, :database_version, :database_eol, :web_server, :web_server_version, :web_server_eol, :app_server, :app_server_version, :app_server_eol, :tech_stack_1, :tech_stack_eol_1, :tech_stack_2, :tech_stack_eol_2, :tech_stack_3, :tech_stack_eol_3, :sys_dep_1, :sys_dep_2, :sys_dep_3, :sys_dep_4, :sys_dep_5, :sys_dep_6, :app_priority)
    end
end
