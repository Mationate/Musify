User.destroy_all

10.times do
  User.create(
    name: Faker::RickAndMorty.character,
    email: Faker::Internet.email
  )
end