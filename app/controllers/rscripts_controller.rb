class RscriptsController < ApplicationController
  before_action :set_rscript, only: [:show, :edit, :update, :destroy]

  # GET /rscripts
  # GET /rscripts.json
  def index
    @rscripts = Rscript.all
  end

  # GET /rscripts/1
  # GET /rscripts/1.json
  def show
	@client = OpenCPU.client	
	@mark = @client.prepare :markdownapp, 'rmdtext', data: {text: @rscript.code}	
  end

  # GET /rscripts/new
  def new
    @rscript = Rscript.new
  end

  # GET /rscripts/1/edit
  def edit
  end

  # POST /rscripts
  # POST /rscripts.json
  def create
    @rscript = Rscript.new(rscript_params)

    respond_to do |format|
      if @rscript.save
        format.html { redirect_to @rscript, notice: 'Rscript was successfully created.' }
        format.json { render :show, status: :created, location: @rscript }
      else
        format.html { render :new }
        format.json { render json: @rscript.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rscripts/1
  # PATCH/PUT /rscripts/1.json
  def update
    respond_to do |format|
      if @rscript.update(rscript_params)
        format.html { redirect_to @rscript, notice: 'Rscript was successfully updated.' }
        format.json { render :show, status: :ok, location: @rscript }
      else
        format.html { render :edit }
        format.json { render json: @rscript.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rscripts/1
  # DELETE /rscripts/1.json
  def destroy
    @rscript.destroy
    respond_to do |format|
      format.html { redirect_to rscripts_url, notice: 'Rscript was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rscript
      @rscript = Rscript.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rscript_params
      params.require(:rscript).permit(:title, :code)
    end
end
