# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


first = Album.create(name: 'first', description: 'test')
second = Album.create(name: 'second', description: 'test')

first_pic = Picture.create(pic_name: 'firstphoto', pic_description: 'lalalalla', album_id: first.id)
second_pic = Picture.create(pic_name: 'firstphoto', pic_description: 'lalalalla', album_id: first.id)
third_pic = Picture.create(pic_name: 'thirdphoto', pic_description: 'lalalalla', album_id: second.id)