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
    title: "My blog post #{blog}",
    body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",

    topic_id: Topic.last.id
  )

end

puts "10 blog posts created"


5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"


8.times do |port|
 Portfolio.create!(
   title: "Portfolio title #{port}",
   subtitle: "Ruby on Rails" ,
   body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
   main_image: "https://placeholdit.co//i/600x400",
   thumb_image: "https://placeholdit.co//i/350x150"
 )
end

1.times do |port|
 Portfolio.create!(
   title: "Portfolio title #{port}",
   subtitle: "Angular" ,
   body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
   main_image: "https://placeholdit.co//i/600x400",
   thumb_image: "https://placeholdit.co//i/350x150"
 )
end

puts "9 portfolios created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Tech #{technology}"
    )
  end
  puts "3 Technolgies created"
