# let's put all the students into an array
# students = [
# {name: "Morty", cohort: :july},
# {name: "Patrick Star", cohort: :july},
# {name: "Cinnamon Bun", cohort: :july},
# {name: "Peter Griffin", cohort: :july},
# {name: "Homer Simpson", cohort: :july},
# {name: "Ralph Wiggum", cohort: :july},
# {name: "Cosmo", cohort: :july},
# {name: "Officer Barbrady", cohort: :july},
# {name: "Spongebob Squarepants", cohort: :july},
# {name: "Dick Dastardly", cohort: :july},
# {name: "Chris Griffin", cohort: :july},
# {name: "Scooby-Doo", cohort: :july},
# {name: "Lumpy Space Princess", cohort: :july},
# {name: "Shaggy", cohort: :july},
# {name: "Butters", cohort: :july},
# {name: "Johnny Bravo", cohort: :july},
# {name: "Pinky", cohort: :july},
# {name: "Dee Dee", cohort: :july}
# ]
def input_students
  puts "Please enter student names"
  puts "When you're done, hit return twice"
  # create empty array
  students = []
  # get the first name
  name = gets.chomp.strip.capitalize
  #while name is not empty, repeat this code
  while !name.empty? do
    # add student hash to array
    students << {name: name, cohort: :july}
    puts "Now we have #{students.count} students"
    # get another name from user
    name = gets.chomp.strip.capitalize
  end
  # return array of students
  students
end
def print_header
  puts "The students of Herrpadurrr Academy"
  puts "-----------------"
end
# def print(students)
#   students.each do |student|
#     puts "#{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end
# EXERCISE 1: number the students
def print(students)
  students.each.with_index(1) do |student, index| 
    puts "#{index}: #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# remember to call methods, otherwise nothing happens
students = input_students
print_header
print(students)
print_footer(students)
