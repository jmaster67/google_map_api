class WeedpensController < ApplicationController
  before_action :set_weedpen, only: [:show, :edit, :update, :destroy]

  # GET /weedpens
  # GET /weedpens.json
  def index

  if params[:search].present?
    @weedpens = Weedpen.near(params[:search], 50, :order => :distance)
    else
    @weedpens = Weedpen.all
    end
  end

  # GET /weedpens/1
  # GET /weedpens/1.json
  def show
  end

  # GET /weedpens/new
  def new
    @weedpen = Weedpen.new
  end

  # GET /weedpens/1/edit
  def edit
  end

  # POST /weedpens
  # POST /weedpens.json
  def create
    @weedpen = Weedpen.new(weedpen_params)

    respond_to do |format|
      if @weedpen.save
        format.html { redirect_to @weedpen, notice: 'Weedpen was successfully created.' }
        format.json { render :show, status: :created, location: @weedpen }
      else
        format.html { render :new }
        format.json { render json: @weedpen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weedpens/1
  # PATCH/PUT /weedpens/1.json
  def update
    respond_to do |format|
      if @weedpen.update(weedpen_params)
        format.html { redirect_to @weedpen, notice: 'Weedpen was successfully updated.' }
        format.json { render :show, status: :ok, location: @weedpen }
      else
        format.html { render :edit }
        format.json { render json: @weedpen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weedpens/1
  # DELETE /weedpens/1.json
  def destroy
    @weedpen.destroy
    respond_to do |format|
      format.html { redirect_to weedpens_url, notice: 'Weedpen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weedpen
      @weedpen = Weedpen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weedpen_params
      params.require(:weedpen).permit(:latitude, :longitude, :address, :description, :title)
    end
end
