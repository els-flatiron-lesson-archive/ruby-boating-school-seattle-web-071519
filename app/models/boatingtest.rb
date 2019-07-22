class BoatingTest
    attr_accessor :test_status
    attr_reader :test_name, :student, :instructor
    @@all = []
    def initialize(student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status =  test_status
        @instructor = instructor
        @@all << self
    end

    def to_s
        @test_name
    end

    def self.all
        @@all
    end
    
end
