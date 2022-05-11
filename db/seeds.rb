puts "🌱 Seeding spices..."

# Seed your database here
puts "seeding networks"
nick = Network.create(name: "Nickelodeon")
cn = Network.create(name: "Cartoon Network")

puts "seeding shows"
spongebob = Show.create(name: "Spongebob Squarepants", network_id: nick.id)
dexter = Show.create(name: "Dexter's Laboratory", network_id: cn.id)
jimmy = Show.create(name: "Jimmy Neutron", network_id: nick.id)
danny = Show.create(name: "Danny Phantom", network_id: nick.id)
teen_titans = Show.create(name: "Teen Titans", network_id: cn.id)

puts "seeding characters"
spongebob_char = Character.create(name: "Spongebob Squarepants", image: "https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/SpongeBob_SquarePants_character.svg/640px-SpongeBob_SquarePants_character.svg.png", age: 35, show_id: spongebob.id)
patrick = Character.create(name: "Patrick Star", image: "https://upload.wikimedia.org/wikipedia/en/thumb/3/33/Patrick_Star.svg/1200px-Patrick_Star.svg.png", age: 37, show_id: spongebob.id)
mr_krabs = Character.create(name: "Mr. Krabs", image: "https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/Mr._Krabs.svg/1200px-Mr._Krabs.svg.png", age: 79, show_id: spongebob.id)
squidward = Character.create(name: "Squidward Tentacles", image: "https://upload.wikimedia.org/wikipedia/en/thumb/8/8f/Squidward_Tentacles.svg/1200px-Squidward_Tentacles.svg.png", age: 44, show_id: spongebob.id)
sandy = Character.create(name: "Sandy Cheeks", image: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a0/Sandy_Cheeks.svg/1200px-Sandy_Cheeks.svg.png", age: 36, show_id: spongebob.id)

dexter_char = Character.create(name: "Dexter McPherson", image: "https://static.wikia.nocookie.net/dexterslab/images/f/f9/DexterS1-2.png", age: 8, show_id: dexter.id)
dee_dee = Character.create(name: "Dee Dee McPherson", image: "https://static.wikia.nocookie.net/dexterslab/images/2/2c/Dee_Dee_with_closed_eyes.png", age: 11, show_id: dexter.id)
mandark = Character.create(name: "Susan 'Mandark' Astronomanov", image: "https://static.wikia.nocookie.net/villains/images/6/62/MandarkFullBody.png", age: 10, show_id: dexter.id)

jimmy_char = Character.create(name: "Jimmy Neutron", image: "https://upload.wikimedia.org/wikipedia/en/5/57/Jimmy_Neutron.png", age: 11, show_id: jimmy.id)
carl = Character.create(name: "Carl Wheezer", image: "https://static.wikia.nocookie.net/jimmyneutron/images/7/71/Carl.png", age: 12, show_id: jimmy.id)
sheen = Character.create(name: "Sheen Estevez", image: "https://static.wikia.nocookie.net/jimmyneutron/images/e/ee/Sheen_jimmy_neutron.png", age: 13, show_id: jimmy.id)

danny_char = Character.create(name: "Danny 'Phantom' Fenton", image: "https://banner2.cleanpng.com/20190615/uxa/kisspng-danny-phantom-tucker-foley-madeline-fenton-ghost-p-cartoon-characters-september-2-17-5d056545d7d8d9.8515185315606346938841.jpg", age: 14, show_id: danny.id)
tucker = Character.create(name: "Tucker Foley", image: "https://static.wikia.nocookie.net/dpwikia/images/a/ac/Render-_Tucker_Foley.png", age: 14, show_id: danny.id)
sam = Character.create(name: "Samantha 'Sam' Manson", image: "https://static.wikia.nocookie.net/dpwikia/images/3/3b/Render-_Sam_1.png", age: 14, show_id: danny.id)

robin = Character.create(name: "Robin", image: "https://pngset.com/images/robin-teentitans-teen-titans-robin-cape-clothing-person-elf-transparent-png-2214074.png", age: 15, show_id: teen_titans.id)
raven = Character.create(name: "Raven", image: "http://pm1.narvii.com/7060/c0f21f5ee6e0f9dff1d677ce423d57b35ebbbffcr1-738-1083v2_uhq.jpg", age: 17, show_id: teen_titans.id)
robin = Character.create(name: "Starfire", image: "https://static.miraheze.org/greatcharacterswiki/thumb/a/a3/StarfireTeenTitans.png/250px-StarfireTeenTitans.png", age: 15, show_id: teen_titans.id)

puts "✅ Done seeding!"
