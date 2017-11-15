class BiblicalsController < ApplicationController
  before_action :set_biblical, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /biblicals
  # GET /biblicals.json
  def index
    @biblicals = Biblical.all
  end

  # GET /biblicals/1
  # GET /biblicals/1.json
  def show
  end

  # GET /biblicals/new
  def new
    @biblical = Biblical.new
  end

  # GET /biblicals/1/edit
  def edit
  end

  # POST /biblicals
  # POST /biblicals.json
  def create
    @biblical = Biblical.new(biblical_params)

    respond_to do |format|
      if @biblical.save
        format.html { redirect_to @biblical, notice: 'Biblical was successfully created.' }
        format.json { render :show, status: :created, location: @biblical }
      else
        format.html { render :new }
        format.json { render json: @biblical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biblicals/1
  # PATCH/PUT /biblicals/1.json
  def update
    respond_to do |format|
      if @biblical.update(biblical_params)
        format.html { redirect_to @biblical, notice: 'Biblical was successfully updated.' }
        format.json { render :show, status: :ok, location: @biblical }
      else
        format.html { render :edit }
        format.json { render json: @biblical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biblicals/1
  # DELETE /biblicals/1.json
  def destroy
    @biblical.destroy
    respond_to do |format|
      format.html { redirect_to biblicals_url, notice: 'Biblical was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biblical
      @biblical = Biblical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biblical_params
      params.require(:biblical).permit(:quote, :source)
    end
end
