# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_main = Admin.create(email: 'name@name.com', password: '123456789', password_confirmation: '123456789')

first11 = Album.create(name: 'first', description: 'test', image: '/images/cake-photo-1.jpg')
second22 = Album.create(name: 'second', description: 'test', image: '/images/cake-photo-1.jpg')
third33 = Album.create(name: '333', description: 'test', image: '/images/cake-photo-1.jpg')
fours44 = Album.create(name: '444', description: 'test', image: '/images/cake-photo-1.jpg')
fifth55 = Album.create(name: '555', description: 'test', image: '/images/cake-photo-1.jpg')

first_pic = Picture.create(pic_name: 'first_pic', pic_description: 'lalalalla', album_id: first11.id)
second_pic = Picture.create(pic_name: 'second_pic', pic_description: 'lalalalla', album_id: first11.id)
third33333 = Picture.create(pic_name: 'third33333', pic_description: 'lalalalla', album_id: second22.id)
fourth4444 = Picture.create(pic_name: 'fourth4444', pic_description: 'lalalalla', album_id: second22.id)
five = Picture.create(pic_name: 'five', pic_description: 'lalalalla', album_id: third33.id)
six = Picture.create(pic_name: 'six', pic_description: 'lalalalla', album_id: third33.id)
seven = Picture.create(pic_name: 'seven', pic_description: 'lalalalla', album_id: fours44.id)
eight = Picture.create(pic_name: 'eight', pic_description: 'lalalalla', album_id: fours44.id)
nine = Picture.create(pic_name: 'nine', pic_description: 'lalalalla', album_id: fifth55.id)
ten = Picture.create(pic_name: 'ten', pic_description: 'lalalalla', album_id: fifth55.id)