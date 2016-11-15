class JuntaController < ApplicationController
  before_action :set_juntum, only: [:show, :edit, :update, :destroy]
  before_action :admin?, only: [:index]
  before_action :usuarios_in_forms, only: [:new, :create, :edit, :update]
  # GET /junta
  # GET /junta.json
  def admin?
    if current_user.read_attribute(:permiso) != 1
      flash[:danger] = "No tienes persmisos de administrador"
      redirect_to mostrar_juntas_path
    end
  end

  def index
    @junta = Juntum.all
  end

  # GET /junta/1
  # GET /junta/1.json
  def show
  end

  # GET /junta/new
  def new
    @juntum = Juntum.new
  end

  # GET /junta/1/edit
  def edit
  end

  # POST /junta
  # POST /junta.json
  def create
    @juntum = Juntum.new(juntum_params)

    respond_to do |format|
      if @juntum.save
        format.html { redirect_to action: "index", notice: 'Juntum was successfully created.' }
        format.json { render :show, status: :created, location: @juntum }
        flash[:success] = "Junta creada"
      else
        format.html { render :new }
        format.json { render json: @juntum.errors, status: :unprocessable_entity }
        flash[:danger] = "Error al crear la junta"
      end
    end
  end

  # PATCH/PUT /junta/1
  # PATCH/PUT /junta/1.json
  def update
    respond_to do |format|
      if @juntum.update(juntum_params)
        format.html { redirect_to @juntum, notice: 'Juntum was successfully updated.' }
        format.json { render :show, status: :ok, location: @juntum }
        flash[:success] = "Junta actualizada"
      else
        format.html { render :edit }
        format.json { render json: @juntum.errors, status: :unprocessable_entity }
        flash[:danger] = "Error al actualizar la junta"
      end
    end
  end

  # DELETE /junta/1
  # DELETE /junta/1.json
  def destroy
    @juntum.destroy
    respond_to do |format|
      format.html { redirect_to junta_url, notice: 'Juntum was successfully destroyed.' }
      format.json { head :no_content }
      flash[:success] = "Junta eliminada"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juntum
      @juntum = Juntum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def juntum_params
      params.require(:juntum).permit(:nombre, :fecha, :descripcion, usuario_ids:[])
    end

    def usuarios_in_forms
      @usuarios = Usuario.all
    end
end
