class NominasController < ApplicationController
  before_action :set_nomina, only: [:show, :edit, :update, :destroy]

  # GET /nominas
  # GET /nominas.json
  def index
    @nominas = Nomina.all
  end

  # GET /nominas/1
  # GET /nominas/1.json
  def show
  end

  # GET /nominas/new
  def new
    @nomina = Nomina.new
  end

  # GET /nominas/1/edit
  def edit
  end

  # POST /nominas
  # POST /nominas.json
  def create
    @nomina = Nomina.new(nomina_params)

    respond_to do |format|
      if @nomina.save
        format.html { redirect_to @nomina, notice: 'Nomina was successfully created.' }
        format.json { render :show, status: :created, location: @nomina }
      else
        format.html { render :new }
        format.json { render json: @nomina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nominas/1
  # PATCH/PUT /nominas/1.json
  def update
    respond_to do |format|
      if @nomina.update(nomina_params)
        format.html { redirect_to @nomina, notice: 'Nomina was successfully updated.' }
        format.json { render :show, status: :ok, location: @nomina }
      else
        format.html { render :edit }
        format.json { render json: @nomina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nominas/1
  # DELETE /nominas/1.json
  def destroy
    @nomina.destroy
    respond_to do |format|
      format.html { redirect_to nominas_url, notice: 'Nomina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nomina
      @nomina = Nomina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nomina_params
      params.require(:nomina).permit(:email, :salary, :position)
    end
end
