json.extract! actividad, :id, :nombre, :descripcion, :estatus, :fecha_inicio, :fecha_final, :created_at, :updated_at
json.url actividad_url(actividad, format: :json)