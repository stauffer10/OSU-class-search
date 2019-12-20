# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    username: "Admin User",
    email: "admin@gmail.com",
    password: "aaaaaa",
    admin: true
)
puts "1 admin user created"

User.create!(
    username: "Regular User",
    email: "test@gmail.com",
    password: "aaaaaa",
    admin: false
)
puts "1 regular user created"

Course.create!(
    coursename: "CS160",
    course_content: "Computer Science Orientation",
    prerequisite: "None",
    proctoredexams: "None",
    groupwork: "None",
    textbook: "None"
)
puts "1 course created"

3.times do |reviews|
    Review.create!(
        reviews_content: "No textbook required, but free online PDF helps a lot when understanding material. Don't get behind on early material as is all reused on assignments... especially classes. ",
        course_id: Course.last.id
    )
end
puts "3 reviews created"
