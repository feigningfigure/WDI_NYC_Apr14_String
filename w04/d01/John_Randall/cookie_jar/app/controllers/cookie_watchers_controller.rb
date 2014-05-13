class CookieWatchersController < ApplicationController
  before_action :set_cookie_watcher, only: [:show, :edit, :update, :destroy]


  def poem
    

    @accuser = CookieWatcher.all.sample.order
    @theif = CookieWatcher.all.sample
    @theif_previous_cookie_amount = @theif.cookies

    @theif.cookies = @theif.cookies + 1
    @theif.save()
    
  end


  def ithappened

  end


  # GET /cookie_watchers
  # GET /cookie_watchers.json
  def index
    @cookie_watchers = CookieWatcher.all
  end

  # GET /cookie_watchers/1
  # GET /cookie_watchers/1.json
  def show
  end

  # GET /cookie_watchers/new
  def new
    @cookie_watcher = CookieWatcher.new
  end

  # GET /cookie_watchers/1/edit
  def edit
  end

  # POST /cookie_watchers
  # POST /cookie_watchers.json
  def create
    @cookie_watcher = CookieWatcher.new(cookie_watcher_params)

    respond_to do |format|
      if @cookie_watcher.save
        format.html { redirect_to @cookie_watcher, notice: 'Cookie watcher was successfully created.' }
        format.json { render :show, status: :created, location: @cookie_watcher }
      else
        format.html { render :new }
        format.json { render json: @cookie_watcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cookie_watchers/1
  # PATCH/PUT /cookie_watchers/1.json
  def update
    respond_to do |format|
      if @cookie_watcher.update(cookie_watcher_params)
        format.html { redirect_to @cookie_watcher, notice: 'Cookie watcher was successfully updated.' }
        format.json { render :show, status: :ok, location: @cookie_watcher }
      else
        format.html { render :edit }
        format.json { render json: @cookie_watcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cookie_watchers/1
  # DELETE /cookie_watchers/1.json
  def destroy
    @cookie_watcher.destroy
    respond_to do |format|
      format.html { redirect_to cookie_watchers_url, notice: 'Cookie watcher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cookie_watcher
      @cookie_watcher = CookieWatcher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cookie_watcher_params
      params.require(:cookie_watcher).permit(:name, :cookies)
    end


end
