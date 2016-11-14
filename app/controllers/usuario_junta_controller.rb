class UsuarioJuntaController < ApplicationController
  before_action :set_usuario_juntum, only: [:show, :edit, :update, :destroy]

  # GET /usuario_junta
  # GET /usuario_junta.json
  def index
    @usuario_junta = UsuarioJuntum.all
  end

  # GET /usuario_junta/1
  # GET /usuario_junta/1.json
  def show
  end

  # GET /usuario_junta/new
  def new
    @usuario_juntum = UsuarioJuntum.new
  end

  # GET /usuario_junta/1/edit
  def edit
  end

  # POST /usuario_junta
  # POST /usuario_junta.json
  def create
    @usuario_juntum = UsuarioJuntum.new(usuario_juntum_params)

    respond_to do |format|
      if @usuario_juntum.save
        format.html { redirect_to @usuario_juntum, notice: 'Usuario juntum was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_juntum }
      else
        format.html { render :new }
        format.json { render json: @usuario_juntum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_junta/1
  # PATCH/PUT /usuario_junta/1.json
  def update
    respond_to do |format|
      if @usuario_juntum.update(usuario_juntum_params)
        format.html { redirect_to @usuario_juntum, notice: 'Usuario juntum was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_juntum }
      else
        format.html { render :edit }
        format.json { render json: @usuario_juntum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_junta/1
  # DELETE /usuario_junta/1.json
  def destroy
    @usuario_juntum.destroy
    respond_to do |format|
      format.html { redirect_to usuario_junta_url, notice: 'Usuario juntum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_juntum
      @usuario_juntum = UsuarioJuntum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_juntum_params
      params.require(:usuario_juntum).permit(:usuario_id, :int, :juntum_id, :int)
    end
    def usuarios_in_form
      @usuarios = Usuario.all
    end

end
