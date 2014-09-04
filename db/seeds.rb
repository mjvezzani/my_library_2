# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'mjvezzani', password: 'foobar', password_confirmation: 'foobar')

Friend.create(first_name: 'friend1', last_name: 'johnson', user_id: 1)
Friend.create(first_name: 'friend2', last_name: 'smith', user_id: 1)
Friend.create(first_name: 'friend3', last_name: 'jones', user_id: 1)

Book.create(title: 'moby dick', user_id: 1, friend_id:1, checked_out: true)
Book.create(title: 'tempest', user_id: 1, friend_id: 2)
Book.create(title: 'enders game', user_id: 1, friend_id: 3 checked_out: false)
