class School
	attr_accessor :name
	attr_accessor :roster

	def initialize(n)
		self.name = n
		self.roster = {}
	end

	def add_student(name, grade)
		if !@roster.key?(grade)
			@roster[grade] = []
		end
		@roster[grade] << name
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each_value {|arr| arr.sort!}
	end

end