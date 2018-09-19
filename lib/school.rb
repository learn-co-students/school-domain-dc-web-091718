class School
  
  attr_reader :roster
  
  def initialize(name)  
    @name = name
    @roster={}
  end
 
  def add_student(student, grade)
    @roster[grade]=[] unless @roster.keys.include?(grade)
    @roster[grade]+=[student]
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each{|k,v| @roster[k]=v.sort}
    # @roster
  end
  
  
end