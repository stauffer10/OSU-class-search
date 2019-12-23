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
    course_content: "Overview of fundamental concepts of computer science. Introduction to problem solving, software engineering, and object-oriented programming. Includes algorithm design and program development. Students write small programs in C++.",
    prerequisite: "None",
    proctoredexams: "Yes",
    groupwork: "None",
    textbook: "Starting Out with C++: Early Objects (9th edition)"
)

Course.create!(
    coursename: "CS162 - Intro to Computer Science II",
    course_content: "Introduces data structures, algorithms, and requires students to produce weekly labs and larger bi-weekly projects in C++.",
    prerequisite: "CS161",
    proctoredexams: "No",
    groupwork: "One group project halfway through the quarter where a team of about 5 students implements a given program in C++",
    textbook: "Starting Out with C++: Early Objects (9th edition)"
)

Course.create!(
    coursename: "CS165 - Intro to Computer Science(Accelerated)",
    course_content: "Condenses CS161 and CS162 into one fast-paced course.",
    prerequisite: "None",
    proctoredexams: "Yes",
    groupwork: "Two small group projects in which you compare your work on a previous assignment and decide whose was best and explain why.",
    textbook: "Starting Out with C++: Early Objects (9th edition)"
)

Course.create!(
    coursename: "CS225 - Discrete Structures in Computer Science",
    course_content: "An introduction to the discrete mathematics of computer science, including logic, set and set operations, methods of proof, recursive definitions, combinatorics, and graph theory.",
    prerequisite: "None",
    proctoredexams: "Yes",
    groupwork: "None",
    textbook: "Discrete Mathematics with Applications (4th edition)"
)

Course.create!(
    coursename: "CS261 - Data Structures",
    course_content: "Teaches abstract data types, dynamic arrays, linked lists, trees and graphs, binary search trees, hash tables, storage management, complexity analysis of data structures. Classwork is done in C (not C++).",
    prerequisite: "CS162 or CS165 and CS225",
    proctoredexams: "Yes",
    groupwork: "Weekly worksheets to complete and discuss in a small group. Must submit typed 'meeting minutes' to Piazza each week.",
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

Course.create!(
    coursename: "CS290 - Web Development",
    course_content: "How to design and implement a multi-tier application using web technologies: creation of extensive custom client- and server-side code, consistent with achieving a high-quality software architecture.",
    prerequisite: "CS162 or CS165",
    proctoredexams: "Yes",
    groupwork: "None",
    textbook: "Eloquent JavaScript, 2nd Ed.: A Modern Introduction to Programming (2nd edition)"
)

Course.create!(
    coursename: "CS325 - Analysis of Algorithms",
    course_content: "Recurrence relations, combinatorics, recursive algorithms, proofs of correctness.",
    prerequisite: "CS261 or CS225",
    proctoredexams: "Yes",
    groupwork: "Graded weekly Canvas discussions in a small group and a 3-person group project the last two weeks of the quarter. Students can choose their group mates for the final project or elect to be placed in a random group.",
    textbook: "Introduction to Algorithms, 3rd Edition (MIT Press)"
)

Course.create!(
    coursename: "CS340 - Introduction to Databases",
    course_content: "Design and implementation of relational databases, including data modeling with ER or UML, diagrams, relational schema, SQL queries, relational algebra, user interfaces, and administration.",
    prerequisite: "CS290",
    proctoredexams: "Yes",
    groupwork: "Final project is fairly involved and allows you to choose a partner (optional)",
    textbook: "Course Materials"
)

Course.create!(
    coursename: "CS344 - Operating Systems",
    course_content: "Introduction to operating systems using UNIX as the case study. System calls and utilities, fundamentals of processes and interprocess communication.",
    prerequisite: "CS261 or CS271",
    proctoredexams: "None",
    groupwork: "None",
    textbook: "Course Materials"
)

Course.create!(
    coursename: "CS352 - Introduction to Usability Engineering",
    course_content: "Basic principles of usability engineering methods for the design and evaluation of software systems. Includes the study of human-machine interactions, user interface characteristics and design strategies, software evaluation methods, and related guidelines and standards.",
    prerequisite: "CS161 or CS165",
    proctoredexams: "No midterm, proctored final",
    groupwork: "The whole class is a group project where you work in groups of 4 to complete weekly writing and UI mockup assignments.",
    textbook: "Interaction Design: Beyond Human-Computer Interaction (4th edition)"
)

Course.create!(
    coursename: "CS361 - Software Engineering I",
    course_content: "Introduction to the 'front end' of the software engineering lifecycle; requirements analysis and specification; design techniques; project management.",
    prerequisite: "CS261",
    proctoredexams: "Yes",
    groupwork: "Almost exclusively group work. Work in a team of 5 to prepare weekly written reports about the software development lifecycle.",
    textbook: "Course materials"
)

Course.create!(
    coursename: "CS362 - Software Engineering II",
    course_content: "Introduction to the 'back end' of the software engineering lifecycle implementation; verification and validation; debugging; maintenance.",
    prerequisite: "CS261",
    proctoredexams: "None",
    groupwork: "Two group assignments and you can form your own groups.",
    textbook: "Course materials"
)

Course.create!(
    coursename: "CS372 - Intro to Computer Networks",
    course_content: "Computer network principles, fundamental networking concepts, packet-switching and circuit switching, TCP/IP protocol layers, reliable data transfer, congestion control, flow control, packet forwarding and routing, MAC addressing, multiple access techniques.",
    prerequisite: "CS261 and CS271",
    proctoredexams: "None",
    groupwork: "None",
    textbook: "Computer Networking: A Top-Down Approach (7th edition)"
)
Course.create!(
    coursename: "CS373 - Defense Against the Dark Arts",
    course_content: "Introduction to the current state of the art in anti-malware, computer forensics, and networking, messaging, and web security. Broad introduction to the field of computer security. Only available in winter quarters.",
    prerequisite: "CS344 and CS340 and CS372",
    proctoredexams: "None",
    groupwork: "None",
    textbook: "Course materials"
)
Course.create!(
    coursename: "CS464 - Open Source Software",
    course_content: "Provides a theoretical foundation of the history, key concepts, technologies, and practices associated with modern Free and Open Source Software (FOSS) projects, and gives students an opportunity to explore and make contributions to FOSS projects with some mentoring and guidance.",
    prerequisite: "CS261 or CS361",
    proctoredexams: "Yes",
    groupwork: "Mandatory discussions and a few peer-reviews where you critique other students' posts",
    textbook: "Course materials"
)
Course.create!(
    coursename: "CS467 - Online Capstone Project",
    course_content: "Taken the last quarter before graduation. This course offers real-world team-based experience with the software engineering design and delivery cycle, including requirements analysis and specification, design techniques, and requirements and final project written documentation. In a group of 3, students spend the quarter creating a single project. (Formerly CS419)",
    prerequisite: "CS344, CS361, and CS362",
    proctoredexams: "None",
    groupwork: "This entire course is a group project",
    textbook: "Course materials"
)
Course.create!(
    coursename: "CS475 - Intro to Parallel Programming",
    course_content: "Theoretical and practical survey of parallel programming, including a discussion of parallel architectures, parallel programming paradigms, and parallel algorithms. Programming one or more parallel computers in a higher-level parallel language.",
    prerequisite: "CS261",
    proctoredexams: "Yes",
    groupwork: "None",
    textbook: "Course materials"
)
Course.create!(
    coursename: "CS493 - Cloud Application Development",
    course_content: "Covers developing RESTful cloud services, an approach based on representational state transfer technology, an architectural style and approach to communications used in modern cloud services development. ",
    prerequisite: "CS290 and CS340 and CS372",
    proctoredexams: "Yes",
    groupwork: "None",
    textbook: "Course materials"
)
Course.create!(
    coursename: "CS496 - Mobile and Cloud Software Development",
    course_content: "Introduction to the concepts and techniques for developing mobile and cloud applications.",
    prerequisite: "CS344",
    proctoredexams: "None",
    groupwork: "None",
    textbook: "Course materials"
)
puts "All course created"

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




