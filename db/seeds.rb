# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Producto.find_or_create_by(fecha: '2014-02-05', titulo: 'Guantes de acero',descripcion: 'Guante de malla de acero inox. tejido, anticorte, marca *manulatex* de industria francesa',vencimiento: '2014-02-20')
Producto.find_or_create_by(fecha: '2014-03-06', titulo: 'Llama',descripcion: 'Llama adulta oriunda de Tilcara. Es mansita',vencimiento: '2014-03-26')
Producto.find_or_create_by(fecha: '2014-04-07', titulo: 'Espejo',descripcion: 'Espejo sin marco. Medidas: 0.8m x 1.2m',vencimiento: '2014-04-22')
Producto.find_or_create_by(fecha: '2014-05-08', titulo: 'Kriptonita',descripcion: '200 gramos de Kriptonita',vencimiento: '2014-06-5')
Producto.find_or_create_by(fecha: '2014-06-09', titulo: 'Aceite y Vinagre',descripcion: '200ml de aceite y 300ml de vinagre. No incluye fascos',vencimiento: '2014-06-24')

