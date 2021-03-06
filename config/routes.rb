Rails.application.routes.draw do
  resources :juntum_usuarios
  resources :usuario_proyectos
  resources :usuario_junta
  resources :actividads
  resources :proyectos
  resources :junta
  resources :usuarios

  root 'sessions#new' #Esta es la primera pagina que me aparece al hacer localhost:3000

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'search_usuario', to: 'usuarios#buscar'
  post 'usuario_proyecto', to: 'usuario_proyectos#create'
  get 'mostrar_juntas'=>'juntum_usuarios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
