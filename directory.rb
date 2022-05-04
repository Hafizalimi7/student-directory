#let's put student into a array
students = [
    "Dr. Hannibal Lecter",
    "Dark Vader",
    "Nurse Ratched",
    "Micheal Corleno",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]

puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
#finally, we print the total
print "Overall, we have #{students.count} great students"
