# EXERCISE 6: center all strings that get printed
def center_puts(str)
  puts str.center(75)
end

# EXERCISE 7: will still try to implement this for cohorts - moving on for now
=begin
cohorts_list = [
  :January,
  :February,
  :March,
  :April,
  :May,
  :June,
  :July,
  :August,
  :September,
  :October,
  :November,
  :December
]
=end

def input_students 
  # create empty array
  students = []
  center_puts "Please follow the instructions. When you're done, hit return twice"
  center_puts "Please enter a student's name"
  # get the first name
  name = gets.strip.capitalize
  while !name.empty? do
    # get cohort
# EXERCISE 7: add input method for cohort (some additional functionality still missing, e.g. misspelled months etc.)
    center_puts "Which cohort (month) is this student in?"
    cohort = gets.chomp.strip.capitalize.to_sym
    if cohort.empty?
      cohort = "July"
    end
    # get hobbies
    center_puts "Please enter student's hobby"
    hobby = gets.chomp.strip.downcase
    # get CoB
    center_puts "What is the student's country of birth?"
    country = gets.chomp.strip
    # while name is not empty, repeat this code
    # add student hash to array
    students << {name: name, hobby: hobby, country: country, cohort: cohort}
  # EXERCISE 9: use singular "student" if there is only one peron on list
    if students.count == 1
      center_puts "Now we have #{students.count} student"
    else
      center_puts "Now we have #{students.count} students"
    end
      # get another name from user
    center_puts "Please enter another student's name, or just hit return to end the list:"
    name = gets.chomp.strip.capitalize
    if name.empty?
      break
    end
  end
  # return array of students
  students
end
def print_header
  center_puts "The students of Herrpadurrr Academy"
  center_puts "-----------------------------------"
end
def print_footer(students)
# Also EXERCISE 9: singular student
  if students.count == 1
    center_puts "We have #{students.count} awesome student"
  else
    center_puts "Overall, we have #{students.count} great students"
  end
end
# EXERCISE 5: add extra categories to students (e.g. hobbies etc.)
# EXERCISE 4: print student names using while/until loop
=begin
def print_loop(students)
  count = 0
  until count == students.length
    students.each.with_index(1) do |student, index|
      if student[:country].empty? && student[:hobby].empty?
        center_puts "#{index}: #{student[:name]} is in the #{student[:cohort]} cohort"
      elsif student[:country].empty?
        center_puts "#{index}: #{student[:name]} is in the #{student[:cohort]} cohort and likes #{student[:hobby]}"
      elsif student[:hobby].empty?
        center_puts "#{index}: #{student[:name]} in the #{student[:cohort]} cohort is from #{student[:country]}"  
      else
        center_puts "#{index}: #{student[:name]} in the #{student[:cohort]} cohort is from #{student[:country]} and likes #{student[:hobby]}"
      end  
      count += 1
    end
  end
end
=end

# EXERCISE 8: Sort & print by cohort
def print_by_cohort(students)
  puts "Choose a cohort to print:"
  which_cohort = gets.chomp.capitalize.to_sym
  students_by_cohort = []
  students.map do |student|
    if student[:cohort] == which_cohort
      students_by_cohort << student
    end
  end
  puts students_by_cohort
end

# EXERCISE 3: only print names shorter than (12)
=begin
def print_length(students, max_length)
  students.each do |student|
    if student[:name].length < max_length
      center_puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end
max_length = 12
=end

# EXERCISE 2: print students whose names starts with specific letter
=begin
def input_first_letter
  center_puts "Which letter should printed names' start with?"
  letter = gets.chomp.strip.capitalize
end
def print_first_letter(students, letter)
  students.each do |student|
    if student[:name].start_with?(letter)
      center_puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end
letter = input_first_letter
print_first_letter(students, letter)
=end

# remember to call methods, otherwise nothing happens
students = input_students
# EXERCISE 12: if list is empty, don't print
unless students.empty?
  print_header
  print_by_cohort(students) # EXERCISE 8
  print_footer(students)
end
# print_length(students, max_length) # EXERCISE 3 call method
# print_loop(students)
# print(students)
