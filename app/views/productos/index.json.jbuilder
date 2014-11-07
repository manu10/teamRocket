json.array!(@productos) do |producto|
  json.extract! producto, :id, :image, :fecha, :titulo, :descripcion, :vencimiento, :usuario_id
  json.url producto_url(producto, format: :json)
end
