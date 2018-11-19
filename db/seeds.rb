# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Place.create(
    [
      { name: 'Houses', description: 'Great houses near sea', image_path: '/assets/image1.jpg' },
      { name: 'Travel bloger', description: 'Travel bloger with church', image_path: '/assets/image2.jpg' },
      { name: 'San Diego', description: 'San Diego with favourite places', image_path: '/assets/image3.jpg' }
    ]
  )
end
