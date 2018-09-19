class School
  attr_accessor = :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)

    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}

    @roster.each do |key, value|
      sorted[key] = value.sort
    end
    sorted

  end
end
