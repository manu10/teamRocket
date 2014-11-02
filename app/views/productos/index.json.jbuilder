json.array!(@productos) do |producto|
  json.extract! producto, :id, :fecha, :titulo, :descripcion, :vencimiento
  json.url producto_url(producto, format: :json)
end
