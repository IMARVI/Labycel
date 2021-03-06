class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  before_action :admin?, only: [:index, :edit, :update, :destroy]
  # GET /usuarios
  # GET /usuarios.json
  def admin?
    if current_user.read_attribute(:permiso) != 1
      flash[:danger] = "No tienes persmisos de administrador"
      redirect_to proyectos_path
    end
  end

  def index
    @usuarios = Usuario.all
  end

  def buscar
    if params[:nombre]
      @nombre = Usuario.find_by_nombre(params[:nombre])
      @nombre ||= Usuario.find_by_nombre(params[:nombre])
    end

    if @nombre
      #render json: @nombre
      render partial:'lookup'
    else
      render partial:'lookup'
    end
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
    @usuario = Usuario.find(params[:id])
    @usuario_proyectos = @usuario.proyectos
  end


  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to action: "index", notice: 'Usuario was successfully created.' }
        format.json { render :show, status: :created, location: @usuario }
        flash[:success] = "Usuario creado"
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
        flash[:danger] = "Error al crear el usuario"
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario }
        flash[:success] = "Usuario actualizado"
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
        flash[:danger] = "Error al actualizar el usuario"
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario was successfully destroyed.' }
      format.json { head :no_content }
      flash[:success] = "Usuario eliminado"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_usuario
      #puts params[:id].inspect  #imprime el valor id dentro de params array
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nombre, :contraseña, :permiso, :estado)
    end
end
