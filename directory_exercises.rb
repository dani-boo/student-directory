def input_students
  puts "Please follow the instructions. When you're done, hit return twice"
  puts "Please enter a student's name"
  # create empty array
  students = []
  # get the first name
  name = gets.chomp.strip.capitalize
  # get hobbies
  puts "Please enter student's hobby"
  hobby = gets.chomp.strip
  # get CoB
  puts "What is the student's country of birth?"
  country = gets.chomp.strip
  # while name is not empty, repeat this code
  while !name.empty? do
    # add student hash to array
    students << {name: name, hobby: hobby, country: country, cohort: :july}
    puts "Now we have #{students.count} students"
    # get another name from user
    puts "Please enter another student's name, or just hit return to end the list:"
    name = gets.chomp.strip.capitalize
      if name.empty?
        break
      end
    # get another hobby
    puts "And this student's hobby?"
    hobby = gets.chomp.strip.capitalize
    # CoB
    puts "And their country of birth?"
  country = gets.chomp.strip
  end
  # return array of students
  students
end
def print_header
  puts "The students of Herrpadurrr Academy"
  puts "-----------------------------------"
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# EXERCISE 5: add extra categories to students (e.g. hobbies etc.)
# EXERCISE 4: print student names using while/until loop
def print_loop(students)
  count = 0
  until count == students.length
    students.each.with_index(1) do |student, index|
    puts "#{index}: #{student[:name]} in the #{student[:cohort]} cohort is from #{student[:country]} and likes to play #{student[:hobby]}"
    count += 1
    end
  end
end

# EXERCISE 3: only print names shorter than (12)
# def print_length(students, max_length)
#   students.each do |student|
#     if student[:name].length < max_length
#       puts "#{student[:name]} (#{student[:cohort]} cohort)"
#     end
#   end
# end
# max_length = 12

# EXERCISE 2: print students whose names starts with specific letter
# def input_first_letter
#   puts "Which letter should printed names' start with?"
#   letter = gets.chomp.strip.capitalize
# end
# def print_first_letter(students, letter)
#   students.each do |student|
#     if student[:name].start_with?(letter)
#       puts "#{student[:name]} (#{student[:cohort]} cohort)"
#     end
#   end
# end
# letter = input_first_letter
# print_first_letter(students, letter)

# remember to call methods, otherwise nothing happens
students = input_students
# print_length(students, max_length) # EXERCISE 3 call method
print_header
print_loop(students)
# print(students)
print_footer(students)
