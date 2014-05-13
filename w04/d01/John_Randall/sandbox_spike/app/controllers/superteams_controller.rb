class SuperteamsController < ApplicationController
  before_action :set_superteam, only: [:show, :edit, :update, :destroy]

  # GET /superteams
  # GET /superteams.json
  def index
    @superteams = Superteam.all
  end

  # GET /superteams/1
  # GET /superteams/1.json
  def show
  end

  # GET /superteams/new
  def new
    @superteam = Superteam.new
  end

  # GET /superteams/1/edit
  def edit
  end

  # POST /superteams
  # POST /superteams.json
  def create
    @superteam = Superteam.new(superteam_params)

    respond_to do |format|
      if @superteam.save
        format.html { redirect_to @superteam, notice: 'Superteam was successfully created.' }
        format.json { render :show, status: :created, location: @superteam }
      else
        format.html { render :new }
        format.json { render json: @superteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /superteams/1
  # PATCH/PUT /superteams/1.json
  def update
    respond_to do |format|
      if @superteam.update(superteam_params)
        format.html { redirect_to @superteam, notice: 'Superteam was successfully updated.' }
        format.json { render :show, status: :ok, location: @superteam }
      else
        format.html { render :edit }
        format.json { render json: @superteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /superteams/1
  # DELETE /superteams/1.json
  def destroy
    @superteam.destroy
    respond_to do |format|
      format.html { redirect_to superteams_url, notice: 'Superteam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_superteam
      @superteam = Superteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def superteam_params
      params[:superteam]
    end
end
