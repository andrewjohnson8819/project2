# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Prompt.destroy_all
Chapter.destroy_all

user = User.create!([
   {email: "andrew@johnson.com", password: "andrewjohnson", password_confirmation: "andrewjohnson"}
])

prompts = Prompt.create([
  {title: "Star Wars", location: "A galaxy far, far away", time_period: "A long time ago", body: "It is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire.", user: user[0]},
  {title: "The Empire Strikes Back", location: "A galaxy that is still far, far away", time_period: "A long time ago (but not as long ago as before)", body: "It is a dark time for the Rebellion. Although the Death Star has been destroyed, Imperial troops have driven the Rebel forces from their hidden base and pursued them across the galaxy.", user: user[0]},
  {title: "Return of the Jedi", location: "A galaxy far, far away (again)", time_period: "A longish time ago", body: "Luke Skywalker has returned to his home planet of Tatooine in an attempt to rescue his friend Han Solo from the clutches of the vile gangster Jabba the Hutt.", user: user[0]}
])

chapters = Chapter.create([
  {body: "During the battle, Rebel spies managed to steal secret plans to the Empire's ultimate weapon, the DEATH STAR, an armored space station with enough power to destroy an entire planet. Pursued by the Empire's sinister agents, Princess Leia races home aboard her starship, custodian of the stolen plans that can save her people and restore freedom to the galaxy.", prompt: prompts[0], user: user[0]},
  {body: "Evading the dreaded Imperial Starfleet, a group of freedom fighters led by Luke Skywalker has established a new secret base on the remote ice world of Hoth. The evil lord Darth Vader, obsessed with finding young Skywalker, has dispatched thousands of remote probes into the far reaches of space.", prompt: prompts[1], user: user[0]},
  {body: "Little does Luke know that the GALACTIC EMPIRE has secretly begun construction on a new armored space station even more powerful than the first dreaded Death Star.When completed, this ultimate weapon will spell certain doom for the small band of rebels struggling to restore freedom to the galaxy.", prompt: prompts[2], user: user[0]}
])
