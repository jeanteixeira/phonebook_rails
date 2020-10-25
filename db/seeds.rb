# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Gerando os tipos de contatos (Kinds)"
  Kind.create!([{description: "Amigo"},
              {description: "Comercial"},
              {description: "Família"}])
puts "Gerando os tipos de contatos (Kinds)... [OK]"


puts "Gerando os contatos (Contacts)"
10.times do |i|
  Contact.create!(
    name: Faker::Name.name,                   
    email: Faker::Internet.email,                   
    kind: Kind.all.sample,                   
    rmk: Faker::Lorem.paragraph([1,2,3].sample)
    )
end
puts "Gerando os contatos (Contacts)... [OK]"
