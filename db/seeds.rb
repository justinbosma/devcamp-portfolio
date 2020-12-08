# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end

10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Fart Fart Farty Fart fart Fart",
		topic_id: Topic.last.id
	)
end

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio Title #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "Man who farted in my fart?",
		main_image: "https://place-hold.it/600x400",
		thumb_image: "https://place-hold.it/350x200"
	)
end

1.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio Title #{portfolio_item}",
		subtitle: "Angular",
		body: "Man who farted in my fart?",
		main_image: "https://place-hold.it/600x400",
		thumb_image: "https://place-hold.it/350x200"
	)
end
