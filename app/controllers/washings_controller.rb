class WashingsController < ApplicationController
  before_action :set_washing, only: %i[ show edit update destroy ]

  # GET /washings or /washings.json
  def index
    @washings = Washing.all
  end

  # GET /washings/1 or /washings/1.json
  def show
  end

  # GET /washings/new
  def new
    @washing = Washing.new
  end

  # GET /washings/1/edit
  def edit
  end

  # POST /washings or /washings.json
  def create
    @washing = Washing.new(washing_params)

    respond_to do |format|
      if @washing.save
        format.html { redirect_to washing_url(@washing), notice: "Washing was successfully created." }
        format.json { render :show, status: :created, location: @washing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @washing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /washings/1 or /washings/1.json
  def update
    respond_to do |format|
      if @washing.update(washing_params)
        format.html { redirect_to washing_url(@washing), notice: "Washing was successfully updated." }
        format.json { render :show, status: :ok, location: @washing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @washing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /washings/1 or /washings/1.json
  def destroy
    @washing.destroy

    respond_to do |format|
      format.html { redirect_to washings_url, notice: "Washing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_washing
      @washing = Washing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def washing_params
      params.require(:washing).permit(:start_date, :end_date, :start_time, :end_time, :brew_id, :washer_id, :checking_id, :glass_checking_id, :equipment_id)
    end
end
