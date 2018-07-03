# let's put all the students into an array
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
def print_header
  puts "The students of Herrpadurrr Academy"
  puts "-----------------"
end
def print(students)
  students.each do |student|
    puts student
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# remember to call methods, otherwise nothing happens
print_header
print(students)
print_footer(students)
