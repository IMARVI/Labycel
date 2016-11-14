json.extract! usuario_proyecto, :id, :usuario_id, :proyecto_id, :created_at, :updated_at
json.url usuario_proyecto_url(usuario_proyecto, format: :json)