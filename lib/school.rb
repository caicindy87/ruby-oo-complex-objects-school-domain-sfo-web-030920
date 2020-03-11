require 'pry'
class School
    attr_reader :roster

    @@all = []
    def initialize(name)
        @name = name
        @roster = {}
        @@all << self
    end

    def add_student(student_name, grade)
        if !@roster[grade]
            @roster[grade] = []
            @roster[grade] << student_name
        else
            @roster[grade] << student_name
        end
    end

    def grade(grade_num)
        @roster[grade_num]
        
    end
    
    def sort
        @roster.each do |grade_num, student_names|
            student_names.sort!
        end
        
        #return a hash with the student names in alphabetical order in the arrays
        @roster
    end

end