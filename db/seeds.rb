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

User.create!(
    username: "Regular User2",
    email: "test2@gmail.com",
    password: "aaaaaa",
    admin: false
)
puts "1 regular user created"

Course.create!(
    coursename: "CS160 - Computer Science Orientation",
    course_content: "Computer Science Orientation",
    prerequisite: "None",
    proctoredexams: "None",
    groupwork: "None",
    textbook: "None"
)

Course.create!(
    coursename: "CS161 - Intro to Computer Science I",
    course_content: "Intro to Computer Science I",
    prerequisite: "None",
    proctoredexams: "None",
    groupwork: "None",
    textbook: "None"
)

Course.create!(
    coursename: "CS162 - Intro to Computer Science II",
    course_content: "Intro to Computer Science II",
    prerequisite: "None",
    proctoredexams: "None",
    groupwork: "None",
    textbook: "None"
)

Course.create!(
    coursename: "CS261 - Data Structures",
    course_content: "Teaches abstract data types, dynamic arrays, linked lists, trees and graphs, binary search trees, hash tables, storage management, complexity analysis of data structures. Classwork is done in C (not C++).",
    prerequisite: "None",
    proctoredexams: "None",
    groupwork: "None",
    textbook: "C Programming Language (2nd edition)"
)

Course.create!(
    coursename: "CS271 - Computer Architecture & Assembly Language",
    course_content: "Introduction to functional organization and operation of digital computers. Coverage of assembly language; addressing, stacks, argument passing, arithmetic operations, decisions, macros, modularization, linkers and debuggers.",
    prerequisite: "CS161 or CS165",
    proctoredexams: "Yes",
    groupwork: "None",
    textbook: "Assembly Language for x86 Processors (7th edition)"
)
puts "5 course created"

Review.create!(
    reviews_content: "Do Repl.it code problems; study the model solutions carefully; try reading all the optional chapters; pay attention to what is covered on Canvas; do not use concepts/tools not covered yet; find a way to organize the material to keep track of what has been covered; revisit each week at least 2-3 times as you progress through the course; start coding week 9 and week 10 projects early; participate in online discussions — ask & answer; explain concepts to your classmates — helps you solidify; use pythontutor; get in the habit of drawing diagrams and variable states; get in the habit of tracing the code; the learning materials are thoroughly thought-through and have solid underlying logic.",
    course_id: 2,
    difficulty: 1
)

Review.create!(
    reviews_content: "Do your best to stay on top of things and get help from TAs/Slack/Piazza. There's no book and no proctored exams in this python redesign, so the external annoyances are minimal. I took it knowing very little python or programming, and found it to be really quite easy. I found the optional text (which can be downloaded as free PDF or purchased inexpensively as a paperback) to be a wonderful extension and secondary resource. Weekly assignments are short (too short, I would say), and quizzes were open-internet and allowed for a retake. I took the quizzes first and used them to help guide what I looked at as I reviewed the weekly lessons on Canvas. Instructor clearly wants everyone to have reasonable shot at 100% on quizzes, based on this setup. Quiz items are randomized from a larger problem set, and the quiz answer options are randomized as well, so you do have to focus on actually learning the ideas. The instructor introduces git on week one, and assignments are submitted through GitHub. However, the true power of git becomes apparent during weeks 8, 9, and 10, when the projects become long enough to warrant branching and merging. Try to remember that git is your friend when you get there. You can do some early studying via Udemy or other Python resources if you like, but it is not at all required. People who come in knowing Python are actually at a sort of disadvantage: we are forbidden from using non-covered topics and tools, and some Piazza/Slack convos were complaints about Why can't I use function.method()?? Do your best to stick to the script, because we are meant to learn the actual logical execution.",
    course_id: 2,
    difficulty: 1
)

Review.create!(
    reviews_content: "Do Repl.it code problems; study the model solutions carefully; try reading all the optional chapters; pay attention to what is covered on Canvas; do not use concepts/tools not covered yet; find a way to organize the material to keep track of what has been covered; revisit each week at least 2-3 times as you progress through the course; start coding week 9 and week 10 projects early; participate in online discussions — ask & answer; explain concepts to your classmates — helps you solidify; use pythontutor; get in the habit of drawing diagrams and variable states; get in the habit of tracing the code; the learning materials are thoroughly thought-through and have solid underlying logic.",
    course_id: 2,
    difficulty: 2
)

Review.create!(
    reviews_content: "Do Repl.it code problems; study the model solutions carefully; try reading all the optional chapters; pay attention to what is covered on Canvas; do not use concepts/tools not covered yet; find a way to organize the material to keep track of what has been covered; revisit each week at least 2-3 times as you progress through the course; start coding week 9 and week 10 projects early; participate in online discussions — ask & answer; explain concepts to your classmates — helps you solidify; use pythontutor; get in the habit of drawing diagrams and variable states; get in the habit of tracing the code; the learning materials are thoroughly thought-through and have solid underlying logic.",
    course_id: 2,
    difficulty: 2
)

Review.create!(
    reviews_content: "Do Repl.it code problems; study the model solutions carefully; try reading all the optional chapters; pay attention to what is covered on Canvas; do not use concepts/tools not covered yet; find a way to organize the material to keep track of what has been covered; revisit each week at least 2-3 times as you progress through the course; start coding week 9 and week 10 projects early; participate in online discussions — ask & answer; explain concepts to your classmates — helps you solidify; use pythontutor; get in the habit of drawing diagrams and variable states; get in the habit of tracing the code; the learning materials are thoroughly thought-through and have solid underlying logic.",
    course_id: 2,
    difficulty: 3
)
puts "5 reviews created with difficulty scores"




