# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating campaigns..."

Campaign.create([
  {
    title: 'Fridays for Future @ Berlin',
    campaign_description: 'March for a cleaner future!',
    cause: 'Climate Change',
    campaign_picture: 'https://www.maz-online.de/var/storage/images/rnd/nachrichten/politik/fridays-for-future-wie-die-schueler-europa-ihren-stempel-aufdruecken/720657963-3-ger-DE/Fridays-for-Future-Wie-die-Schueler-Europa-ihren-Stempel-aufdruecken_big_teaser_article.jpg',
    location: 'Berlin',
    organisation: 'Fridays for Future'
  },
  {
    title: 'STOP violence against women',
    campaign_description: 'Stand up - from women, for women',
    cause: 'Women Equality',
    campaign_picture: 'https://www.awarenessdays.com/wp-content/uploads/2018/07/stopviolence-1200x720-1024x614.jpg',
    launch_date: '2019_11_25'
  },
  {
    title: 'Who made my clothes?',
    campaign_description: 'Raise awareness on clothes production',
    cause: 'Equality and development',
    campaign_picture: 'https://saubere-kleidung.de/wp-content/uploads/2018/01/who-made-my-clothes-fashion-revolution-germany-350x350.jpg',
    organisation: 'Clean Clothes Campaign'
  }
])

puts "Finished!"
