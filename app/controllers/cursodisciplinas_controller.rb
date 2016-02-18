class CursodisciplinasController < ApplicationController
  before_action :set_cursodisciplina, only: [:show, :edit, :update, :destroy]

  # GET /cursodisciplinas
  # GET /cursodisciplinas.json
  def index
    @cursodisciplinas = Cursodisciplina.all
  end

  # GET /cursodisciplinas/1
  # GET /cursodisciplinas/1.json
  def show
  end

  # GET /cursodisciplinas/new
  def new
    @cursodisciplina = Cursodisciplina.new
  end

  # GET /cursodisciplinas/1/edit
  def edit
  end

  # POST /cursodisciplinas
  # POST /cursodisciplinas.json
  def create
    @cursodisciplina = Cursodisciplina.new(cursodisciplina_params)

    respond_to do |format|
      if @cursodisciplina.save
        format.html { redirect_to @cursodisciplina, notice: 'Cursodisciplina was successfully created.' }
        format.json { render :show, status: :created, location: @cursodisciplina }
      else
        format.html { render :new }
        format.json { render json: @cursodisciplina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cursodisciplinas/1
  # PATCH/PUT /cursodisciplinas/1.json
  def update
    respond_to do |format|
      if @cursodisciplina.update(cursodisciplina_params)
        format.html { redirect_to @cursodisciplina, notice: 'Cursodisciplina was successfully updated.' }
        format.json { render :show, status: :ok, location: @cursodisciplina }
      else
        format.html { render :edit }
        format.json { render json: @cursodisciplina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursodisciplinas/1
  # DELETE /cursodisciplinas/1.json
  def destroy
    @cursodisciplina.destroy
    respond_to do |format|
      format.html { redirect_to cursodisciplinas_url, notice: 'Cursodisciplina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cursodisciplina
      @cursodisciplina = Cursodisciplina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cursodisciplina_params
      params.require(:cursodisciplina).permit(:curso_id, :disciplina_id)
    end
end
