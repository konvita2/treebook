class Status2sController < ApplicationController
  before_action :set_status2, only: [:show, :edit, :update, :destroy]

  # GET /status2s
  # GET /status2s.json
  def index
    @status2s = Status2.all
  end

  # GET /status2s/1
  # GET /status2s/1.json
  def show
  end

  # GET /status2s/new
  def new
    @status2 = Status2.new
  end

  # GET /status2s/1/edit
  def edit
  end

  # POST /status2s
  # POST /status2s.json
  def create
    @status2 = Status2.new(status2_params)

    respond_to do |format|
      if @status2.save
        format.html { redirect_to @status2, notice: 'Status2 was successfully created.' }
        format.json { render :show, status: :created, location: @status2 }
      else
        format.html { render :new }
        format.json { render json: @status2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status2s/1
  # PATCH/PUT /status2s/1.json
  def update
    respond_to do |format|
      if @status2.update(status2_params)
        format.html { redirect_to @status2, notice: 'Status2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @status2 }
      else
        format.html { render :edit }
        format.json { render json: @status2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status2s/1
  # DELETE /status2s/1.json
  def destroy
    @status2.destroy
    respond_to do |format|
      format.html { redirect_to status2s_url, notice: 'Status2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status2
      @status2 = Status2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status2_params
      params.require(:status2).permit(:name, :content)
    end
end
