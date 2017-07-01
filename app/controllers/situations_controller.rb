class SituationsController < ApplicationController
  before_action :set_situation, only: [:edit, :update, :destroy]

  # GET /situations
  # GET /situations.json
  def index
    @situations = Situation.all
  end

  # GET /situations/new
  def new
    @situation = Situation.new
  end

  # GET /situations/1/edit
  def edit
  end

  # POST /situations
  # POST /situations.json
  def create
    @situation = Situation.new(situation_params)

    respond_to do |format|
      if @situation.save
        format.html { redirect_to situations_url, notice: "Situation '#{@situation.name}' was successfully created." }
        format.json { render :index, status: :created, location: situations_url }
      else
        format.html { render :new }
        format.json { render json: @situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /situations/1
  # PATCH/PUT /situations/1.json
  def update
    respond_to do |format|
      if @situation.update(situation_params)
        format.html { redirect_to situations_url, notice: "Situation '#{@situation.name}' was successfully updated." }
        format.json { render :index, status: :ok, location: situations_url }
      else
        format.html { render :edit }
        format.json { render json: @situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /situations/1
  # DELETE /situations/1.json
  def destroy
    @situation.destroy
    respond_to do |format|
      format.html { redirect_to situations_url, notice: "Situation '#{@situation.name}' was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_situation
      @situation = Situation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def situation_params
      params.require(:situation).permit(:name, :situation_type)
    end
end
