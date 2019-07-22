class Student
    attr_reader :first_name
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def Student.all 
        @@all
    end

    def to_s
        @first_name
    end

    def add_boating_test(test_name, test_status, instructor)
        #should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def Student.find_student(first_name)
        #will take in a first name and output the student (Object) with that name
        @@all.find do |student|
            student.first_name == first_name
        end
    end

    def tests
        #returns an array of all the tests they have
        BoatingTest.all.select do |test|
            test.student == self
        end
    end
    
    def grade_percentage 
        #should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
        passed_tests = self.tests.select do |test|
            test.test_status == "passed"
        end
        percentage = passed_tests.length.to_f / self.tests.length.to_f
    end

end
