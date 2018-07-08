require "csv"
@students = [] # an empty array accessible to all methods

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def students_list(name, cohort)
  @students << {name: name, cohort: cohort.to_sym}
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    puts "Please type file name, or press enter to see students.csv"
    save_name = STDIN.gets.chomp
    if save_name?
      save_students
    else
      save_students(save_name)
    end
  when "4"
    puts "Please type file name, or press enter to load students.csv"
    load_name = STDIN.gets.chomp
    if load_name.empty?
      load_students
    else
      load_students(load_name)
    end
  when "9"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, please try again"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "Which cohort?"
    cohort = STDIN.gets.chomp
    # add the student hash to the array
    if cohort.empty?
      @students << {name: name, cohort: :november}
    else
      students_list(name, cohort)
    end
    if @students.count > 1
      puts "Now we have #{@students.count} students"
    else
      puts "Now we have 1 student"
    end
    # get another name from the user
    puts "Please enter next student's name"
    name = STDIN.gets.chomp
  end
end

def show_students
  if @students.count >= 1
    print_header
    print_student_list
    print_footer
  else
    puts "We don't have any students yet"
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  # open file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def try_load_students
  filename = ARGV.first # first argument from command line
  return if filename.nil? # exit method if none is given
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, the file #{filename} does not exist."
    exit #quit program
  end
end

try_load_students
interactive_menu

# Program that reads its own source code
def filename = __FILE__
  File.open(filename, "r") do |file|
    file.readlines.each do |line|
      puts line
    end
  end
end
