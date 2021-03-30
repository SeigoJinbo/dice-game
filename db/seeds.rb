require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Session.destroy_all
Game.destroy_all
User.destroy_all
sho =
  User.create!(
    email: 'sho@gmail.com',
    password: '123456',
    name: 'Sho',
    dice: [1, 2, 3, 4, 5]
  )
user_avatar =
  URI.open('https://ca.slack-edge.com/T02NE0241-U01BGQ7MZ4J-e39557371271-512')
sho.photo.attach(
  io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png'
)
sho.save
yuping =
  User.create!(
    email: 'yuping@gmail.com',
    password: '123456',
    name: 'Yuping',
    dice: [1, 2, 3, 4, 5]
  )
user_avatar =
  URI.open('https://ca.slack-edge.com/T02NE0241-U01BP13R1CL-aa72532c73d4-512')
yuping.photo.attach(
  io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png'
)
yuping.save
liz =
  User.create!(
    email: 'liz@gmail.com',
    password: '123456',
    name: 'Liz',
    dice: [1, 2, 3, 4, 5]
  )
user_avatar =
  URI.open('https://ca.slack-edge.com/T02NE0241-U01BGPC1Z0S-de16e0810ab9-512')
liz.photo.attach(
  io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png'
)
liz.save
doug =
  User.create!(
    email: 'doug@gmail.com',
    password: '123456',
    name: 'Doug',
    dice: [1, 2, 3, 4, 5]
  )
user_avatar =
  URI.open('https://ca.slack-edge.com/T02NE0241-U4APKLFLM-da0b004a3774-512')
doug.photo.attach(
  io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png'
)
doug.save

seigo =
  User.create!(
    email: 'seigo@gmail.com',
    password: '123456',
    name: 'Seigo',
    dice: [1, 2, 3, 4, 5],
    admin: true
  )

user_avatar =
  URI.open(
    'https://media-exp1.licdn.com/dms/image/C5603AQEQoApULokzvQ/profile-displayphoto-shrink_800_800/0/1615959376127?e=1622678400&v=beta&t=XboGTGQ3YaYimIMB2LKWQBxhwqtdQVIzn_xW5pVmZ-Y'
  )
seigo.photo.attach(
  io: user_avatar, filename: 'user_avatar.png', content_type: 'image/png'
)
seigo.save

game1 =
  Game.create!(
    owner: sho,
    rotation: %w[
      Player1@gmail.com
      Player2@gmail.com
      Player3@gmail.com
      Player4@gmail.com
    ],
    turn: 0,
    value: 2,
    quantity: 0
  )

Session.create!(user: sho, game: game1)
Session.create!(user: yuping, game: game1)
Session.create!(user: liz, game: game1)
Session.create!(user: doug, game: game1)
Session.create!(user: seigo, game: game1)
