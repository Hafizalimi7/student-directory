def interactive_menu
  students = []
  loop do
    #1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" #9 because we'll be adding more items
    #2. read the input and save it into a variable
    selection = gets.chomp
    #3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
       puts "I don't know what you meant, try again"
    end
  end
end

def input_students
    puts "Please enter the names of the students"
    puts "TO finsh, just hit return twice"
    students = []
    name = gets.chomp
    puts "Please enter the cohort you'll like"
    cohort = gets.chomp
    if cohort.length.zero?
      cohort << "Decmber"
    end
    #while the name is not empty, repeat this code
    count = 1
    while !name.empty? do
      #add the students hash to the array
      students << { name: name, cohort: cohort.to_sym }
      while count <= students.length
        if name.start_with?('a','b','j','p') && name.length < 12
          students.map { |s| s[:cohort] }.uniq.each { |c| puts "#{c} cohort students are #{students.find_all { |s| s[:cohort] == c }.map { |s| s[:name] }.join(', ')}" }
          count += 1
          break
        else
          students.delete(name)
        end
      end
      if students.count == 1
        puts "Now we have #{students.count} student"
      else
        puts "Now we have #{students.count} students"
      end
      # puts "Now we have #{students.count} student"
      #get snother name from user
      puts "Please enter another name"
      name = gets.chomp
      puts "Please enter cohort"
      cohort = gets.chomp
    end
    # return the array of the students
    students
end
  
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
  
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
  
interactive_menu
if students.length > 0
  print(students)
end
print_footer(students)