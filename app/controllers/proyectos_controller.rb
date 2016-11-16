class ProyectosController < ApplicationController
  before_action :set_proyecto, only: [:show, :edit, :update, :destroy]
  before_action :admin?, only: [:index]
  before_action :usuarios_in_form, only: [:new,:create,:edit,:update]
  # GET /proyectos
  # GET /proyectos.json
  def admin?
    if current_user.read_attribute(:permiso) != 1
      redirect_to current_user
    end
  end

  def index
    @proyectos = Proyecto.all
  end

  # GET /proyectos/1
  # GET /proyectos/1.json
  def show
    @proyecto = Proyecto.find(params[:id])
    @proyecto_actividades = @proyecto.actividads
  end

  # GET /proyectos/new
  def new
    @proyecto = Proyecto.new
  end

  # GET /proyectos/1/edit
  def edit
  end

  # POST /proyectos
  # POST /proyectos.json
  def create
    @proyecto = Proyecto.new(proyecto_params)

    respond_to do |format|
      if @proyecto.save
        format.html { redirect_to action: "index", notice: 'Proyecto was successfully created.' }
        format.json { render :show, status: :created, location: @proyecto }
        flash[:success] = "Proyecto creado"
      else
        format.html { render :new }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
        flash[:danger] = "Error al crear el proyecto"
      end
    end
  end

  # PATCH/PUT /proyectos/1
  # PATCH/PUT /proyectos/1.json
  def update
    respond_to do |format|
      if @proyecto.update(proyecto_params)
        format.html { redirect_to current_user, notice: 'Proyecto was successfully updated.' }
        format.json { render :show, status: :ok, location: @proyecto }
        flash[:success] = "Proyecto actualizado"

      # @modificacion = Modificacion.new(:proyecto_id => @proyecto.id, usuario_id => params[:id] )

      else
        format.html { render :edit }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
        flash[:danger] = "Error al actualizar el proyecto"
      end
    end
  end

  # DELETE /proyectos/1
  # DELETE /proyectos/1.json
  def destroy
    @proyecto.destroy
    respond_to do |format|
      format.html { redirect_to proyectos_url, notice: 'Proyecto was successfully destroyed.' }
      format.json { head :no_content }
      flash[:success] = "Proyecto eliminado"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto
      @proyecto = Proyecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyecto_params
      params.require(:proyecto).permit(:nombre, :fecha_inicio, :fecha_final, usuario_ids:[])
    end

    def usuarios_in_form
      @usuarios = Usuario.all
    end

end
