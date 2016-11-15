class JuntumUsuariosController < ApplicationController
  before_action :set_juntum_usuario, only: [:show, :edit, :update, :destroy]

  # GET /juntum_usuarios
  # GET /juntum_usuarios.json
  helper_method :index
  def index
    @juntum_usuarios = JuntumUsuario.all
    @usuario = current_user
    @usuario_juntas = @usuario.junta
  end

  # GET /juntum_usuarios/1
  # GET /juntum_usuarios/1.json
  def show
  end

  # GET /juntum_usuarios/new
  def new
    @juntum_usuario = JuntumUsuario.new
  end

  # GET /juntum_usuarios/1/edit
  def edit
  end

  # POST /juntum_usuarios
  # POST /juntum_usuarios.json
  def create
    @juntum_usuario = JuntumUsuario.new(juntum_usuario_params)

    respond_to do |format|
      if @juntum_usuario.save
        format.html { redirect_to @juntum_usuario, notice: 'Juntum usuario was successfully created.' }
        format.json { render :show, status: :created, location: @juntum_usuario }
      else
        format.html { render :new }
        format.json { render json: @juntum_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /juntum_usuarios/1
  # PATCH/PUT /juntum_usuarios/1.json
  def update
    respond_to do |format|
      if @juntum_usuario.update(juntum_usuario_params)
        format.html { redirect_to @juntum_usuario, notice: 'Juntum usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @juntum_usuario }
      else
        format.html { render :edit }
        format.json { render json: @juntum_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juntum_usuarios/1
  # DELETE /juntum_usuarios/1.json
  def destroy
    @juntum_usuario.destroy
    respond_to do |format|
      format.html { redirect_to juntum_usuarios_url, notice: 'Juntum usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juntum_usuario
      @juntum_usuario = JuntumUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def juntum_usuario_params
      params.require(:juntum_usuario).permit(:usuario_id, :juntum_id)
    end
end
