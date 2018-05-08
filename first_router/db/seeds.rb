# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# drop_table :users
# drop_table :artworks
# drop_table :artwork_shares
User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

User.create!(username: "KenChan")
User.create!(username: "Meenakshi")
User.create!(username: "AndyMan")

Artwork.create!(title: "fish", image_url: "fish.com", artist_id: User.all[0].id)
Artwork.create!(title: "turtle", image_url: "turtle.com", artist_id: User.all[1].id)
Artwork.create!(title: "flamingo", image_url: "flamingo.com", artist_id: User.all[2].id)

ArtworkShare.create!(artwork_id: Artwork.all[1].id, viewer_id: User.all[0].id)
ArtworkShare.create!(artwork_id: Artwork.all[2].id, viewer_id: User.all[0].id)
ArtworkShare.create!(artwork_id: Artwork.all[2].id, viewer_id: User.all[1].id)
ArtworkShare.create!(artwork_id: Artwork.all[0].id, viewer_id: User.all[2].id)
