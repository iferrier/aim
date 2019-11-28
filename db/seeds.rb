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
    picture: 'https://vignette.wikia.nocookie.net/bojackhorseman/images/d/de/Princess_Carolyn.png/revision/latest?cb=20171017002131',
    location: 'Dresden',
    instagram: 'https://www.instagram.com/princessecarolinedemonaco/'
  },
  {
    name: 'Bojack Horseman',
    email: 'bojack@example.com',
    password: '123123',
    bio: 'I spend a lot of time with the real me and believe me, nobody is going to love that guy.',
    picture: 'https://cdn.vox-cdn.com/thumbor/kJTD0f73ITuO7VM_c5PlaP03LP0=/0x0:3840x2160/1200x800/filters:focal(1613x773:2227x1387)/cdn.vox-cdn.com/uploads/chorus_image/image/61420935/BoJack_Horseman_S05E01_21m31s30960f.0.jpg',
    location: 'Breuberg',
    instagram: 'https://www.instagram.com/francescaeastwood/'
  },
  {
    name: 'Diane Nguyen',
    email: 'diane@example.com',
    password: '123123',
    bio: 'You are responsible for your own happiness.',
    picture: 'https://dazedimg-dazedgroup.netdna-ssl.com/900/azure/dazed-prod/1240/9/1249781.jpg',
    location: 'Bremerhaven',
    instagram: 'https://www.instagram.com/giovannagoglino/'
  },
  {
    name: 'Masha',
    email: 'masha@example.com',
    password: '123123',
    bio: 'Lifestyle blogger looking for helping good causes.',
    picture: 'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb&dl=matheus-ferrero-W7b3eDUb_2I-unsplash.jpg',
    location: 'Spreewald',
    instagram: 'https://www.instagram.com/masha/'
  },
  {
    name: 'Amandine',
    email: 'amandine@example.com',
    password: '123123',
    bio: 'As a travel blogger, I would like to encourage people to take action against global warming!',
    picture: 'https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb&dl=kal-visuals-b1Hg7QI-zcc-unsplash.jpg',
    location: 'Rosenheim',
    instagram: 'https://www.instagram.com/lesberlinettes/'
  },
  {
    name: 'Vreni',
    email: 'vreni@example.com',
    password: '123123',
    bio: 'Living in Berlin and having a lot of LGBT friends made me sensitive to that cause for which I would like to speak up.',
    picture: 'https://images.unsplash.com/photo-1485199692108-c3b5069de6a0?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb&dl=freestocks-org-ujdUqduwCls-unsplash.jpg',
    location: 'Berlin',
    instagram: 'https://www.instagram.com/vrenifrost/'
  },
])

puts "Creating campaigns..."

Campaign.create([
  {
    title: 'Fridays for Future',
    campaign_description: 'March for a cleaner future!',
    cause: 'Global Warming',
    campaign_picture: 'https://www.maz-online.de/var/storage/images/rnd/nachrichten/politik/fridays-for-future-wie-die-schueler-europa-ihren-stempel-aufdruecken/720657963-3-ger-DE/Fridays-for-Future-Wie-die-Schueler-Europa-ihren-Stempel-aufdruecken_big_teaser_article.jpg',
    location: 'Berlin',
    organisation: 'Fridays for Future',
    launch_date: '2019-06-30'
  },
  {
    title: 'Fridays for Future2',
    campaign_description: 'March for a cleaner future!',
    cause: 'Global Warming',
    campaign_picture: 'https://www.maz-online.de/var/storage/images/rnd/nachrichten/politik/fridays-for-future-wie-die-schueler-europa-ihren-stempel-aufdruecken/720657963-3-ger-DE/Fridays-for-Future-Wie-die-Schueler-Europa-ihren-Stempel-aufdruecken_big_teaser_article.jpg',
    location: 'Berlin',
    organisation: 'Fridays for Future',
    launch_date: '2019-06-30'
  },
  {
    title: 'Fridays for Future3',
    campaign_description: 'March for a cleaner future!',
    cause: 'Global Warming',
    campaign_picture: 'https://www.maz-online.de/var/storage/images/rnd/nachrichten/politik/fridays-for-future-wie-die-schueler-europa-ihren-stempel-aufdruecken/720657963-3-ger-DE/Fridays-for-Future-Wie-die-Schueler-Europa-ihren-Stempel-aufdruecken_big_teaser_article.jpg',
    location: 'Berlin',
    organisation: 'Fridays for Future',
    launch_date: '2019-06-30'
  },
  {
    title: 'Against discrimination',
    campaign_description: 'March against discrimination!',
    cause: 'LGBTQ',
    campaign_picture: 'https://www.maz-online.de/var/storage/images/rnd/nachrichten/politik/fridays-for-future-wie-die-schueler-europa-ihren-stempel-aufdruecken/720657963-3-ger-DE/Fridays-for-Future-Wie-die-Schueler-Europa-ihren-Stempel-aufdruecken_big_teaser_article.jpg',
    location: 'Berlin',
    organisation: 'CSD',
    launch_date: '2019-06-30'
  },
  {
    title: 'Against discrimination',
    campaign_description: 'March against discrimination!',
    cause: 'LGBTQ',
    campaign_picture: 'https://www.maz-online.de/var/storage/images/rnd/nachrichten/politik/fridays-for-future-wie-die-schueler-europa-ihren-stempel-aufdruecken/720657963-3-ger-DE/Fridays-for-Future-Wie-die-Schueler-Europa-ihren-Stempel-aufdruecken_big_teaser_article.jpg',
    location: 'Berlin',
    organisation: 'CSD',
    launch_date: '2019-06-30'
  },
  {
    title: 'Against discrimination',
    campaign_description: 'March against discrimination!',
    cause: 'LGBTQ',
    campaign_picture: 'https://www.maz-online.de/var/storage/images/rnd/nachrichten/politik/fridays-for-future-wie-die-schueler-europa-ihren-stempel-aufdruecken/720657963-3-ger-DE/Fridays-for-Future-Wie-die-Schueler-Europa-ihren-Stempel-aufdruecken_big_teaser_article.jpg',
    location: 'Berlin',
    organisation: 'CSD',
    launch_date: '2019-06-30'
  },
  {
    title: 'Fundraiser',
    campaign_description: 'Fundraiser Example',
    cause: 'Fundraiser',
    campaign_picture: 'https://www.maz-online.de/var/storage/images/rnd/nachrichten/politik/fridays-for-future-wie-die-schueler-europa-ihren-stempel-aufdruecken/720657963-3-ger-DE/Fridays-for-Future-Wie-die-Schueler-Europa-ihren-Stempel-aufdruecken_big_teaser_article.jpg',
    location: 'Berlin',
    organisation: 'Bill and Melinda Foundation',
    launch_date: '2019-06-30'
  },
  {
    title: 'Fundraiser',
    campaign_description: 'Fundraiser Example',
    cause: 'Fundraiser',
    campaign_picture: 'https://www.maz-online.de/var/storage/images/rnd/nachrichten/politik/fridays-for-future-wie-die-schueler-europa-ihren-stempel-aufdruecken/720657963-3-ger-DE/Fridays-for-Future-Wie-die-Schueler-Europa-ihren-Stempel-aufdruecken_big_teaser_article.jpg',
    location: 'Berlin',
    organisation: 'Bill and Melinda Foundation',
    launch_date: '2019-06-30'
  },
  {
    title: 'Fundraiser',
    campaign_description: 'Fundraiser Example',
    cause: 'Fundraiser',
    campaign_picture: 'https://www.maz-online.de/var/storage/images/rnd/nachrichten/politik/fridays-for-future-wie-die-schueler-europa-ihren-stempel-aufdruecken/720657963-3-ger-DE/Fridays-for-Future-Wie-die-Schueler-Europa-ihren-Stempel-aufdruecken_big_teaser_article.jpg',
    location: 'Berlin',
    organisation: 'Bill and Melinda Foundation',
    launch_date: '2019-06-30'
  }
])

puts "Finished!"
