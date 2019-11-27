# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Campaign.destroy_all
User.destroy_all

puts "Creating users..."

User.create ([
  {
    name: 'Princess Carolyn',
    email: 'pcarolyn@example.com',
    password: '123123',
    bio: 'I am Princess Carolyn - nothing to add!',
    picture: 'https://vignette.wikia.nocookie.net/bojackhorseman/images/d/de/Princess_Carolyn.png/revision/latest?cb=20171017002131'
  },
  {
    name: 'Bojack Horseman',
    email: 'bojack@example.com',
    password: '123123',
    bio: 'I spend a lot of time with the real me and believe me, nobody is going to love that guy.',
    picture: 'https://cdn.vox-cdn.com/thumbor/kJTD0f73ITuO7VM_c5PlaP03LP0=/0x0:3840x2160/1200x800/filters:focal(1613x773:2227x1387)/cdn.vox-cdn.com/uploads/chorus_image/image/61420935/BoJack_Horseman_S05E01_21m31s30960f.0.jpg'
  },
  {
    name: 'Diane Nguyen',
    email: 'diane@example.com',
    password: '123123',
    bio: 'You are responsible for your own happiness.',
    picture: 'https://dazedimg-dazedgroup.netdna-ssl.com/900/azure/dazed-prod/1240/9/1249781.jpg'
  }
])

puts "Creating campaigns..."

Campaign.create([
  {
    title: 'Fridays for Future @ Berlin',
    campaign_description: 'March for a cleaner future!',
    cause: 'Climate Change',
    location: 'Berlin',
    organisation: 'Fridays for Future'
  },
  {
    title: 'STOP violence against women',
    campaign_description: 'Stand up - from women, for women',
    cause: 'Women Equality',
    launch_date: '2019_11_25'
  },
  {
    title: 'Who made my clothes?',
    campaign_description: 'Raise awareness on clothes production',
    cause: 'Equality and development',
    organisation: 'Clean Clothes Campaign'
  }
])

puts "Finished!"
