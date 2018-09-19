require 'pry'

class School
  attr_accessor :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @student_name = name
    @student_grade = grade
    if roster.keys.include?(@student_grade)
      roster[@student_grade] << @student_name
    else
      roster[@student_grade] = []
      roster[@student_grade] << @student_name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each do |grade, list_of_students|
      sorted_roster[grade] = list_of_students.sort
    end
    sorted_roster
  end

end
