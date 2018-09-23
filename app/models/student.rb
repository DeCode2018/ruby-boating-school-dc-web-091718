class Student

  @@all = []
#Student needs to be able to read its own instances names
   attr_reader :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name,test_status,instructor)
    BoatingTest.new(self,test_name,test_status,instructor)
  end

  def self.find_student(first_name)
    all_students = BoatingTest.all
    all_students.select do |item_id|
      if item_id.student.first_name == first_name
         item_id
      end
    end
  end
end
