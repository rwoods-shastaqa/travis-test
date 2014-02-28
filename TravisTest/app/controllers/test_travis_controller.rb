class TestTravisController < ApplicationController
  before_action :set_test_travi, only: [:show, :edit, :update, :destroy]

  # GET /test_travis
  # GET /test_travis.json
  def index
    @test_travis = TestTravi.all
  end

  # GET /test_travis/1
  # GET /test_travis/1.json
  def show
  end

  # GET /test_travis/new
  def new
    @test_travi = TestTravi.new
  end

  # GET /test_travis/1/edit
  def edit
  end

  # POST /test_travis
  # POST /test_travis.json
  def create
    @test_travi = TestTravi.new(test_travi_params)

    respond_to do |format|
      if @test_travi.save
        format.html { redirect_to @test_travi, notice: 'Test travi was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test_travi }
      else
        format.html { render action: 'new' }
        format.json { render json: @test_travi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_travis/1
  # PATCH/PUT /test_travis/1.json
  def update
    respond_to do |format|
      if @test_travi.update(test_travi_params)
        format.html { redirect_to @test_travi, notice: 'Test travi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test_travi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_travis/1
  # DELETE /test_travis/1.json
  def destroy
    @test_travi.destroy
    respond_to do |format|
      format.html { redirect_to test_travis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_travi
      @test_travi = TestTravi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_travi_params
      params.require(:test_travi).permit(:test1, :test2)
    end
end
