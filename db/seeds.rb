# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

Movie.destroy_all

20.times do |i|
    Movie.create(
        name: Faker::Movie.title,
        year: rand(1900..2020),
        genre: ["action", "horreur", "comédie", "drame"].sample,
        synopsis: Faker::Lorem.sentence(word_count: 10),
        director: Faker::Name.name,
        allocine_rating: rand(0.0..5.0).round(1),
        my_rating: nil,
        already_seen: false
    )
    puts "#{i+1} movie(s) created"
    puts "*"*(i+1)
end


=begin
In rails console :

tp Movie.all, :id, :name, :year, :allocine_rating, :my_rating, :already_seen

Choose ur favorite movie
best_01 = Movie.find(22)
best_02 = Movie.find_by(name:"Scarface")
best_03 = Movie.find_by(name:"Alien")

Rate ur movie
best_01.update(my_rating:4.8,already_seen:true)
best_02.update(my_rating:4.8,already_seen:true)
best_03.update(my_rating:4.8,already_seen:true)
=end