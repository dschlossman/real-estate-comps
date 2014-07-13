class CmasController < ApplicationController
  before_action :set_cma, only: [:show, :edit, :update, :destroy]

  # GET /cmas
  # GET /cmas.json
  def index
    @cmas = Cma.all
  end

  # GET /cmas/1
  # GET /cmas/1.json
  def show
  end

  # GET /cmas/new
  def new
    @cma = Cma.new
  end

  # GET /cmas/1/edit
  def edit
  end

  # POST /cmas
  # POST /cmas.json
  def create
    @cma = Cma.new(cma_params)

    respond_to do |format|
      if @cma.save
        format.html { redirect_to @cma, notice: 'Cma was successfully created.' }
        format.json { render :show, status: :created, location: @cma }
      else
        format.html { render :new }
        format.json { render json: @cma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cmas/1
  # PATCH/PUT /cmas/1.json
  def update
    respond_to do |format|
      if @cma.update(cma_params)
        format.html { redirect_to @cma, notice: 'Cma was successfully updated.' }
        format.json { render :show, status: :ok, location: @cma }
      else
        format.html { render :edit }
        format.json { render json: @cma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cmas/1
  # DELETE /cmas/1.json
  def destroy
    @cma.destroy
    respond_to do |format|
      format.html { redirect_to cmas_url, notice: 'Cma was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cma
      @cma = Cma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cma_params
      params.require(:cma).permit(:name)
    end
end
