class SlidesController < ApplicationController
  before_action :set_slide, only: [:show, :edit, :update, :destroy]

  # GET /slides
  # GET /slides.json
  def index
    @slides = Slide.all
    @day = Time.now.strftime "%Y-%m-%d"
  end

  # GET /slides/1
  # GET /slides/1.json
  def show
  end

  # GET /slides/new
  def new
    @slide = Slide.new
  end

  # GET /slides/1/edit
  def edit
  end

  # POST /slides
  # POST /slides.json
  def create
    @slide = Slide.new(slide_params)

    respond_to do |format|
      if @slide.save
        update_welcome @slide

        format.html { redirect_to @slide, notice: 'Slide was successfully created.' }
        format.json { render :show, status: :created, location: @slide }
      else
        format.html { render :new }
        format.json { render json: @slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slides/1
  # PATCH/PUT /slides/1.json
  def update
    respond_to do |format|
      if @slide.update(slide_params)
        update_welcome @slide

        format.html { redirect_to @slide, notice: 'Slide was successfully updated.' }
        format.json { render :show, status: :ok, location: @slide }
      else
        format.html { render :edit }
        format.json { render json: @slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slides/1
  # DELETE /slides/1.json
  def destroy
    @slide.destroy
    respond_to do |format|
      format.html { redirect_to slides_url, notice: 'Slide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slide
      @slide = Slide.find(params[:id])
    end

    def update_welcome (slide)
      @slides = Slide.all
      @slides.each do |s|
        if (s != @slide) and slide[:welcome] == true
          s[:welcome] = false
          s.save
        end
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slide_params
      params.require(:slide).permit(:name, :comment, :start, :end, :welcome, :picture)
    end
end
