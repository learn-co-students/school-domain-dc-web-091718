# code here!
require 'pry'
class School

	attr_reader :roster


	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(student, grade_level)
	!!!roster[grade_level]? (roster[grade_level]  = [student]) : (roster[grade_level]<<student)
	end

	def grade(int)
		roster[int]
	end

	def sort
	 sorted = {}
    	roster.each do |grade, students|
     	sorted[grade] = students.sort
    	end
    sorted
  end



end


