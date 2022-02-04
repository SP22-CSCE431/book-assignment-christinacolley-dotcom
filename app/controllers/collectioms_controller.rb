class CollectiomsController < ApplicationController
  before_action :set_collectiom, only: %i[ show edit update destroy ]

  # GET /collectioms or /collectioms.json
  def index
    @collectioms = Collectiom.all
  end

  # GET /collectioms/1 or /collectioms/1.json
  def show
  end

  # GET /collectioms/new
  def new
    @collectiom = Collectiom.new
  end

  # GET /collectioms/1/edit
  def edit
  end

  # POST /collectioms or /collectioms.json
  def create
    @collectiom = Collectiom.new(collectiom_params)

    respond_to do |format|
      if @collectiom.save
        format.html { redirect_to collectiom_url(@collectiom), notice: "Collectiom was successfully created." }
        format.json { render :show, status: :created, location: @collectiom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collectiom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collectioms/1 or /collectioms/1.json
  def update
    respond_to do |format|
      if @collectiom.update(collectiom_params)
        format.html { redirect_to collectiom_url(@collectiom), notice: "Collectiom was successfully updated." }
        format.json { render :show, status: :ok, location: @collectiom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collectiom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collectioms/1 or /collectioms/1.json
  def destroy
    @collectiom.destroy

    respond_to do |format|
      format.html { redirect_to collectioms_url, notice: "Collectiom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collectiom
      @collectiom = Collectiom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collectiom_params
      params.require(:collectiom).permit(:title)
    end
end
