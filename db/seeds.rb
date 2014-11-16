# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Producto.find_or_create_by( titulo: 'Guantes de acero',descripcion: 'Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa',vencimiento: '2015-02-20', UrlImage: 'http://40.media.tumblr.com/6bc78e251e463fb68362d168fcf38bda/tumblr_nbqngpEAks1tlipbuo1_1280.jpg')
Producto.find_or_create_by( titulo: 'Llama',descripcion: 'Llama adulta oriunda de Tilcara. Es mansita',vencimiento: '2015-03-26', UrlImage: 'http://41.media.tumblr.com/6750bde49985d14340294b65cbfac7a2/tumblr_nbsedz4pML1tlipbuo1_1280.jpg')
Producto.find_or_create_by( titulo: 'Espejo',descripcion: 'Espejo sin marco. Medidas: 0.8m x 1.2m',vencimiento: '2015-04-22', UrlImage: 'http://40.media.tumblr.com/ad056adadfeeced7f24f918a843a0f60/tumblr_nbsf4rGZFE1tlipbuo1_1280.jpg')
Producto.find_or_create_by( titulo: 'Kriptonita',descripcion: '200 gramos de Kriptonita',vencimiento: '2015-06-5', UrlImage: 'http://41.media.tumblr.com/8e08757ed8fd1c3368e29dc127140ef1/tumblr_nbsewqvU231tlipbuo1_1280.jpg')
Producto.find_or_create_by( titulo: 'Aceite y Vinagre',descripcion: '200ml de aceite y 300ml de vinagre. No incluye fascos',vencimiento: '2015-06-24', UrlImage: 'http://40.media.tumblr.com/f92d39b2c62cf2bc5398797db35ce37d/tumblr_nbsejfmSt21tlipbuo1_400.jpg')
Producto.find_or_create_by( titulo: "ojota", descripcion: "Una lindas hawaianas")
Producto.find_or_create_by( titulo: "ojota", descripcion: "Una lindas hawaianas")
99.times do |n|
  titulo  = "example-#{n+1}"
  Producto.find_or_create_by( titulo: titulo, descripcion: "Una lindas hawaianas")
end

llama = Producto.where(titulo: "Llama").first
kript = Producto.where(titulo: "Kriptonita").first
esp = Producto.where(titulo: "Espejo").first
guant = Producto.where(titulo: "Guantes de acero").first

Comment.find_or_create_by(producto: llama, mensaje: "Como se LLAMA?", respuesta: "Maria de las Mercedes")

Comment.find_or_create_by(producto: kript, mensaje: "Conoces a Superman?", respuesta: "No")

Comment.find_or_create_by(producto: esp, mensaje: "por que lo subastas?", respuesta: "Porque no me veo bien")

Comment.find_or_create_by(producto: guant, mensaje: "te da fuerza sobre humana al usarlo?", respuesta: "SI :)")

['registered', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end
User.find_or_create_by(  name:"Pepe Argento ", DNI: 23565777, phone: 02345615222, birthDate: 11-11-1990)