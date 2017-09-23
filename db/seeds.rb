# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ContentType.create!(contenttype: "Ebook")
ContentType.create!(contenttype: "Webinar")
ContentType.create!(contenttype: "Video")
Admin.create!(email: "admin@eamil.com", password: "asdfasdf")