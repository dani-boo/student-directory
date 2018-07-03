# let's put all the students into an array
students = [
{name: "Morty", cohort: :july},
{name: "Patrick Star", cohort: :july},
{name: "Cinnamon Bun", cohort: :july},
{name: "Peter Griffin", cohort: :july},
{name: "Homer Simpson", cohort: :july},
{name: "Ralph Wiggum", cohort: :july},
{name: "Cosmo", cohort: :july},
{name: "Officer Barbrady", cohort: :july},
{name: "Spongebob Squarepants", cohort: :july},
{name: "Dick Dastardly", cohort: :july},
{name: "Chris Griffin", cohort: :july},
{name: "Scooby-Doo", cohort: :july},
{name: "Lumpy Space Princess", cohort: :july},
{name: "Shaggy", cohort: :july},
{name: "Butters", cohort: :july},
{name: "Johnny Bravo", cohort: :july},
{name: "Pinky", cohort: :july},
{name: "Dee Dee", cohort: :july}
]
def print_header
  puts "The students of Herrpadurrr Academy"
  puts "-----------------"
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# remember to call methods, otherwise nothing happens
print_header
print(students)
print_footer(students)
