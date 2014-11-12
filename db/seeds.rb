# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Producto.find_or_create_by(fecha: '2014-02-05', titulo: 'Guantes de acero',descripcion: 'Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa',vencimiento: '2014-02-20', UrlImage: 'http://40.media.tumblr.com/6bc78e251e463fb68362d168fcf38bda/tumblr_nbqngpEAks1tlipbuo1_1280.jpg')
Producto.find_or_create_by(fecha: '2014-03-06', titulo: 'Llama',descripcion: 'Llama adulta oriunda de Tilcara. Es mansita',vencimiento: '2014-03-26', UrlImage: 'http://41.media.tumblr.com/6750bde49985d14340294b65cbfac7a2/tumblr_nbsedz4pML1tlipbuo1_1280.jpg')
Producto.find_or_create_by(fecha: '2014-04-07', titulo: 'Espejo',descripcion: 'Espejo sin marco. Medidas: 0.8m x 1.2m',vencimiento: '2014-04-22', UrlImage: 'http://40.media.tumblr.com/ad056adadfeeced7f24f918a843a0f60/tumblr_nbsf4rGZFE1tlipbuo1_1280.jpg')
Producto.find_or_create_by(fecha: '2014-05-08', titulo: 'Kriptonita',descripcion: '200 gramos de Kriptonita',vencimiento: '2014-06-5', UrlImage: 'http://41.media.tumblr.com/8e08757ed8fd1c3368e29dc127140ef1/tumblr_nbsewqvU231tlipbuo1_1280.jpg')
Producto.find_or_create_by(fecha: '2014-06-09', titulo: 'Aceite y Vinagre',descripcion: '200ml de aceite y 300ml de vinagre. No incluye fascos',vencimiento: '2014-06-24', UrlImage: 'http://40.media.tumblr.com/f92d39b2c62cf2bc5398797db35ce37d/tumblr_nbsejfmSt21tlipbuo1_400.jpg')

