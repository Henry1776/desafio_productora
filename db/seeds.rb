Concert.destroy_all
Band.destroy_all 
15.times do
  band = Band.create(name: Faker::Music::RockBand.name,
    kind: [0,1].sample,
    start_date: Faker::Date.between(from:'1951-01-01', to: Date.today - 1.year))
puts "se ha creado la banda: #{band.name}"
(10..25).to_a.sample.times do |i|
    concert = band.concerts.build(location: Faker::Address.city,
    date: Faker::Date.between(from:'2019-01-01', to: Date.today),
    quantity: (1000..25000).to_a.sample,
    duration: (1..4).to_a.sample )
    concert.save
    puts "Concierto en: #{concert.location}"
  end
end