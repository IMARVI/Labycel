class SessionsController < ApplicationController
  skip_before_action :require_user
  def new

  end

  def create
    usuario = Usuario.find_by(:nombre => params[:sessions][:nombre])
    if usuario && usuario.contraseña == params[:sessions][:contrasena]

      session[:user_id] = usuario.id
      flash[:success] = 'Bienvenido'
      redirect_to proyectos_path(usuario)
    else
      flash.now[:danger] = 'Los datos de tu login son incorrectos'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:sucess] = "Fuera de Sesion"
    redirect_to root_path

  end

end