class DadosacessosController < ApplicationController
  before_action :set_dadosacesso, only: [:show, :edit, :update, :destroy]

  # GET /dadosacessos
  # GET /dadosacessos.json
  def index
    @dadosacessos = Dadosacesso.all
  end

  # GET /dadosacessos/1
  # GET /dadosacessos/1.json
  def show
  end

  # GET /dadosacessos/new
  def new
    @dadosacesso = Dadosacesso.new
  end

  # GET /dadosacessos/1/edit
  def edit
  end

  # POST /dadosacessos
  # POST /dadosacessos.json
  def create
    @dadosacesso = Dadosacesso.new(dadosacesso_params)

    respond_to do |format|
      if @dadosacesso.save
        format.html { redirect_to @dadosacesso, notice: 'Dadosacesso was successfully created.' }
        format.json { render :show, status: :created, location: @dadosacesso }
      else
        format.html { render :new }
        format.json { render json: @dadosacesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dadosacessos/1
  # PATCH/PUT /dadosacessos/1.json
  def update
    respond_to do |format|
      if @dadosacesso.update(dadosacesso_params)
        format.html { redirect_to @dadosacesso, notice: 'Dadosacesso was successfully updated.' }
        format.json { render :show, status: :ok, location: @dadosacesso }
      else
        format.html { render :edit }
        format.json { render json: @dadosacesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dadosacessos/1
  # DELETE /dadosacessos/1.json
  def destroy
    @dadosacesso.destroy
    respond_to do |format|
      format.html { redirect_to dadosacessos_url, notice: 'Dadosacesso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dadosacesso
      @dadosacesso = Dadosacesso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dadosacesso_params
      params.require(:dadosacesso).permit(:dac_data_acesso, :dac_ip, :usuario_id)
    end
end
