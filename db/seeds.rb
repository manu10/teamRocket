# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.find_or_create_by(name: "Autos")
Category.find_or_create_by(name: "Varios")


Producto.find_or_create_by( category_id: "1", titulo: 'Guantes de acero',descripcion: 'Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa',vencimiento:Date.today+20.days, UrlImage: 'http://40.media.tumblr.com/6bc78e251e463fb68362d168fcf38bda/tumblr_nbqngpEAks1tlipbuo1_1280.jpg')
Producto.find_or_create_by(  category_id: "1", titulo: 'Llama',descripcion: 'Llama adulta oriunda de Tilcara. Es mansita',vencimiento: Date.today+18.days, UrlImage: 'http://41.media.tumblr.com/6750bde49985d14340294b65cbfac7a2/tumblr_nbsedz4pML1tlipbuo1_1280.jpg')
Producto.find_or_create_by( category_id: "1",  titulo: 'Espejo',descripcion: 'Espejo sin marco. Medidas: 0.8m x 1.2m',vencimiento: Date.today+17.days, UrlImage: 'http://40.media.tumblr.com/ad056adadfeeced7f24f918a843a0f60/tumblr_nbsf4rGZFE1tlipbuo1_1280.jpg')
Producto.find_or_create_by( category_id: "1",  titulo: 'Kriptonita',descripcion: '200 gramos de Kriptonita',vencimiento: Date.today+19.days, UrlImage: 'http://41.media.tumblr.com/8e08757ed8fd1c3368e29dc127140ef1/tumblr_nbsewqvU231tlipbuo1_1280.jpg')
Producto.find_or_create_by( category_id: "1",  titulo: 'Aceite y Vinagre',descripcion: '200ml de aceite y 300ml de vinagre. No incluye fascos',vencimiento: '2015-06-24', UrlImage: 'http://40.media.tumblr.com/f92d39b2c62cf2bc5398797db35ce37d/tumblr_nbsejfmSt21tlipbuo1_400.jpg')
Producto.find_or_create_by( user_id: "1", category_id: "1",  titulo: "ojota", descripcion: "Una lindas hawaianas",vencimiento: Date.today+15.days)
Producto.find_or_create_by( user_id: 1, category_id:"1",  titulo: "ojota", descripcion: "Una lindas hawaianas",vencimiento: Date.today+16.days)
=begin
99.times do |n|
  titulo  = "example-#{n+1}"
  Producto.find_or_create_by( titulo: titulo, descripcion: "Una lindas hawaianas")
end
=end


llama = Producto.where(titulo: "Llama").first
kript = Producto.where(titulo: "Kriptonita").first
esp = Producto.where(titulo: "Espejo").first
guant = Producto.where(titulo: "Guantes de acero").first

Comment.find_or_create_by(producto: llama, mensaje: "Como se LLAMA?")

Comment.find_or_create_by(producto: kript, mensaje: "Conoces a Superman?")

Comment.find_or_create_by(producto: esp, mensaje: "por que lo subastas?")

Comment.find_or_create_by(producto: guant, mensaje: "te da fuerza sobre humana al usarlo?")


Answer.find_or_create_by(comment_id: "1", content: "Maria de las Mercedes")

Answer.find_or_create_by(comment_id: "2", content: "No")

Answer.find_or_create_by(comment_id: "3", content: "Porque no me veo bien")

Answer.find_or_create_by(comment_id: "4", content: "SI :)")

['registered', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end


User.create( role_id:2, name:"Pepe Argento ", DNI:23565777 , password_confirmation:"administrador", email:"bestnidproject@gmail.com",password:"administrador", phone: 02345615222, birthDate: '1990-11-11')
 admin_id=User.where(email:"bestnidproject@gmail.com").first.id
Domicile.find_or_create_by(country:"Argentina",province:"Buenos Aires",city:"La Plata",street:"44",number:"44", user_id:admin_id)