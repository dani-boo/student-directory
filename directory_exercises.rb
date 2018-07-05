def input_students
  puts "Please enter student names"
  puts "When you're done, hit return twice"
  # create empty array
  students = []
  # get the first name
  name = gets.chomp.strip.capitalize
  # while name is not empty, repeat this code
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
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# EXERCISE 2: print students whose names starts with specific letter
def input_first_letter
  puts "Which letter should printed names' start with?"
  letter = gets.chomp.strip.capitalize
end
def print_first_letter(students, letter)
  students.each do |student|
    if student[:name].start_with?(letter)
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end
letter = input_first_letter
print_first_letter(students, letter)

# remember to call methods, otherwise nothing happens
students = input_students
print_header
# print(students)
print_footer(students)
