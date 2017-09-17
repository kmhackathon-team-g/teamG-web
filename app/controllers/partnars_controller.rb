class PartnarsController < ApplicationController
  before_action :set_partnar, only: [:show, :edit, :update, :destroy]

  # GET /partnars
  # GET /partnars.json
  def index
    @partnars = Partnar.all
    @partnar = Partnar.new
  end

  # GET /partnars/1
  # GET /partnars/1.json
  def show
  end

  # GET /partnars/new
  def new
    @partnar = Partnar.new
  end

  # GET /partnars/1/edit
  def edit
  end

  # POST /partnars
  # POST /partnars.json
  def create
    @partnar = Partnar.new(partnar_params)

    respond_to do |format|
      if @partnar.save
        format.html { redirect_to @partnar, notice: 'Partnar was successfully created.' }
        format.json { render :show, status: :created, location: @partnar }
      else
        format.html { render :new }
        format.json { render json: @partnar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partnars/1
  # PATCH/PUT /partnars/1.json
  def update
    respond_to do |format|
      if @partnar.update(partnar_params)
        format.html { redirect_to @partnar, notice: 'Partnar was successfully updated.' }
        format.json { render :show, status: :ok, location: @partnar }
      else
        format.html { render :edit }
        format.json { render json: @partnar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partnars/1
  # DELETE /partnars/1.json
  def destroy
    @partnar.destroy
    respond_to do |format|
      format.html { redirect_to partnars_url, notice: 'Partnar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partnar
      @partnar = Partnar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partnar_params
      params.require(:partnar).permit(:pid, :name, :color)
    end
end
