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
  
students = input_students
print_header
if students.length > 0
  print(students)
end
print_footer(students)