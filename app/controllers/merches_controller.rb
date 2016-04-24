class MerchesController < ApplicationController
  before_action :set_merch, only: [:show, :edit, :update, :destroy]

  # GET /merches
  # GET /merches.json
  def index
    @merches = Merch.all
    
    @merch_type = Merch.select(:item).order(:item).distinct
  end

  # GET /merches/1
  # GET /merches/1.json
  def show
  end

  # GET /merches/new
  def new
    @merch = Merch.new
  end

  # GET /merches/1/edit
  def edit
  end

  # POST /merches
  # POST /merches.json
  def create
    @merch = Merch.new(merch_params)

    respond_to do |format|
      if @merch.save
        format.html { redirect_to @merch, notice: 'Merch was successfully created.' }
        format.json { render :show, status: :created, location: @merch }
      else
        format.html { render :new }
        format.json { render json: @merch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merches/1
  # PATCH/PUT /merches/1.json
  def update
    respond_to do |format|
      if @merch.update(merch_params)
        format.html { redirect_to @merch, notice: 'Merch was successfully updated.' }
        format.json { render :show, status: :ok, location: @merch }
      else
        format.html { render :edit }
        format.json { render json: @merch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merches/1
  # DELETE /merches/1.json
  def destroy
    @merch.destroy
    respond_to do |format|
      format.html { redirect_to merches_url, notice: 'Merch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merch
      @merch = Merch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merch_params
      params.require(:merch).permit(:item, :price, :size, :avatar)
    end
end
