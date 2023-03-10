class BrewsController < ApplicationController
  before_action :set_brew, only: %i[ show edit update destroy ]

  # GET /brews or /brews.json
  def index
    @brews = Brew.all
  end

  # GET /brews/1 or /brews/1.json
  def show
  end

  # GET /brews/new
  def new
    @brew = Brew.new
  end

  # GET /brews/1/edit
  def edit
  end

  # POST /brews or /brews.json
  def create
    @brew = Brew.new(brew_params)

    respond_to do |format|
      if @brew.save
        format.html { redirect_to brew_url(@brew), notice: "Brew was successfully created." }
        format.json { render :show, status: :created, location: @brew }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brew.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brews/1 or /brews/1.json
  def update
    respond_to do |format|
      if @brew.update(brew_params)
        format.html { redirect_to brew_url(@brew), notice: "Brew was successfully updated." }
        format.json { render :show, status: :ok, location: @brew }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brew.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brews/1 or /brews/1.json
  def destroy
    @brew.destroy

    respond_to do |format|
      format.html { redirect_to brews_url, notice: "Brew was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brew
      @brew = Brew.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brew_params
      params.require(:brew).permit(:batch, :date, :product_id, :washed, :washing_id, :equipments_id)
    end
end
