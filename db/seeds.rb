# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_user = User.create(email: 'admin@email.com', password: '123456')
admin_user.add_role :admin


Category.create(name: '공부')
Category.create(name: '사진')
Category.create(name: '커피')
Category.create(name: '밀크티')
Category.create(name: '음료')
Category.create(name: '빙수')
Category.create(name: '케잌')
Category.create(name: '기타')