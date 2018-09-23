class Instructor

  @@all = []



  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def self.pass_student(student,test_name)
    BoatingTest.all.each do |item_id|
      if item_id.student == student &&
        item_id.test_name == test_name
        item_id.test_status = "passed"
      end
    end
  end

  def self.fail_student(student,test_name)
    BoatingTest.all.each do |item_id|
      if item_id.student == student &&
        item_id.test_name == test_name
        item_id.test_status = "failed"
      end
    end
  end

  def self.student_grade_percentage(first_name)
    # 1. grab student status info
    # 2. count how many times a student passed a class and divide that number by how many test the student took.
    # 3. return as a percentage.
    passed_count = 0
    test_taken = 0
       BoatingTest.all.each do |item_id|
        if item_id.student.first_name == first_name
          test_taken+=1
          if item_id.test_status == 'passed'
            passed_count+=1
          end
        end
      end
        percentage = (passed_count/(test_taken))*100.0
        puts "#{first_name}'s test percentage is #{percentage}%"
    end
end
