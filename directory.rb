# let's put all the students in an array
students = [
"Morty", 
"Patrick Star", 
"Cinnamon Bun", 
"Peter Griffin", 
"Homer Simpson", 
"Ralph Wiggum", 
"Cosmo", 
"Officer Barbrady", 
"Spongebob Squarepants", 
"Dick Dastardly", 
"Chris Griffin", 
"Scooby-Doo", 
"Lumpy Space Princess", 
"Shaggy", 
"Butters", 
"Johnny Bravo", 
"Pinky", 
"Dee Dee" 
]
# and then print them
puts "The students of Herrpadurrr Academy"
puts "-----------------"
students.each do |student|
  puts student
end
# finally, we print the total number of students
puts "Overall, we have #{students.count} great students"
