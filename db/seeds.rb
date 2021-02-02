# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

resp = HTTParty.get('https://akabab.github.io/superhero-api/api/all.json')
data = JSON.parse(resp.body)

data.each do |char|
    Character.create(
        name: char["name"],
        intelligence: char["powerstats"]["intelligence"],
        strength: char["powerstats"]["strength"],
        speed: char["powerstats"]["speed"],
        durability: char["powerstats"]["durability"],
        power: char["powerstats"]["power"],
        combat: char["powerstats"]["combat"],
        race: char["appearance"]["race"],
        gender: char["appearance"]["gender"],
        height: char["appearance"]["height"][0],
        weight: char["appearance"]["weight"][0],
        fullName: char["biography"]["fullName"],
        alignment: char["biography"]["alignment"],
        occupation: char["work"]["occupation"],
        groups: char["connections"]["groupAffiliation"],
        universe: char["biography"]["publisher"],
        image1: char["images"]["sm"],
        image2: char["images"]["md"]
    )
end