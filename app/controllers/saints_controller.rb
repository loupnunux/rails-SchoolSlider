class SaintsController < ApplicationController
  before_action :set_saint, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /saints
  # GET /saints.json
  def index
    @saints = Saint.all
  end

  # GET /saints/1
  # GET /saints/1.json
  def show
  end

  # GET /saints/new
  def new
    @saint = Saint.new
  end

  # GET /saints/1/edit
  def edit
  end

  # POST /saints
  # POST /saints.json
  def create
    @saint = Saint.new(saint_params)

    respond_to do |format|
      if @saint.save
        format.html { redirect_to @saint, notice: 'Saint was successfully created.' }
        format.json { render :show, status: :created, location: @saint }
      else
        format.html { render :new }
        format.json { render json: @saint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saints/1
  # PATCH/PUT /saints/1.json
  def update
    respond_to do |format|
      if @saint.update(saint_params)
        format.html { redirect_to @saint, notice: 'Saint was successfully updated.' }
        format.json { render :show, status: :ok, location: @saint }
      else
        format.html { render :edit }
        format.json { render json: @saint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saints/1
  # DELETE /saints/1.json
  def destroy
    @saint.destroy
    respond_to do |format|
      format.html { redirect_to saints_url, notice: 'Saint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saint
      @saint = Saint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saint_params
      params.require(:saint).permit(:day, :name)
    end
end
