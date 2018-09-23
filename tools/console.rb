require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#Students
spongebob= Student.new("Spongebob")
 patrick= Student.new("Patrick")
 dustin= Student.new("Dustin")

#Instructors
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
melanie= Instructor.new("Melanie")
jake= Instructor.new("Jake")

#Test
test1= spongebob.add_boating_test("Don't Crash 101", "pending", puff)
test2= patrick.add_boating_test("Staying Alive", "pending", krabs)
test3= dustin.add_boating_test("Object Oriented Language", "passed", melanie)
test4= dustin.add_boating_test("Many to Many", "passed", jake)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
