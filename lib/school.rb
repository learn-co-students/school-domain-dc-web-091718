require 'pry'

class School
  attr_reader :roster

  def initialize(name)
    @roster = {}
  end

  def add_student(name, grade)
    # Either add student to existing grade or create a new grade with the student.
    @roster.keys.include?(grade) ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade_to_find)
    @roster[grade_to_find]
  end

  def sort
    @roster.each do |grade, names|
      names.sort!
    end
  end

end