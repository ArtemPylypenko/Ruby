class Student
  attr_accessor :name, :attend, :isAttend

  def initialize(name, attend, isAttend)
    @name = name
    @attend = attend
    @isAttend = isAttend
  end

  def inspect
    "Name : #{@name}\nAttend : #{@attend}\nIs attend : #{@isAttend}"
  end
end

class Teacher
  attr_accessor :name, :studentsMap, :isAttend

  def initialize(name,students)
    @name = name
    @studentsMap = students
  end

  def inspect
    "Name : #{@name}\nAttend : #{@attend}\nIs attend : #{@isAttend}"
  end
  def gradeToTen()
    @studentsMap.each do |student|
      if(student.attend == "GRADE_TO_TEN")
        print(student.inspect + "\n")
    end

    end
  end
  def gradeNotToTen()
    @studentsMap.each do |student|
      if(student.attend != "GRADE_TO_TEN")
        print(student.inspect + "\n")
      end

    end
  end
  def failed()
    @studentsMap.each do |student|
      if(student.isAttend == false )
        print(student.inspect + "\n")
      end

    end
  end
  def goToTen()
    count = 0
    @studentsMap.each do |student|
      if(student.isAttend == false || student.attend == "GRADE_TO_TEN")
        count = count+1
      end
    end
    count
  end
  def countOfClasses()
    studentsCount = 0
    @studentsMap.each do |student|
      if(student.isAttend == false || student.attend == "GRADE_TO_TEN")
        studentsCount = studentsCount+1
      end
    end
    count = studentsCount/25
    if(studentsCount%25 != 0 )
      count+=1
    end
    count
  end

end



students = [
  Student.new("Saches","PTU",true),
  Student.new("Sonia","ZNU",false ),
  Student.new("Mary","KNU",true),
  Student.new("Kirill","PTU",true),
  Student.new("Katia","SRY",false),
  Student.new("Andre","GRADE_TO_TEN",true),
  Student.new("Sasha","GRADE_TO_TEN",true),
  Student.new("Dmitro","GRADE_TO_TEN",true),
  Student.new("Nikita","GRADE_TO_TEN",true),
  Student.new("Andre","GRADE_TO_TEN",true),
  Student.new("Nikita","GRADE_TO_TEN",true),
  Student.new("Dmitro","GRADE_TO_TEN",true),
  Student.new("Sasha","GRADE_TO_TEN",true),
  Student.new("Dmitro","GRADE_TO_TEN",true),
  Student.new("Nikita","GRADE_TO_TEN",true),
  Student.new("Sasha","GRADE_TO_TEN",true),
  Student.new("Nikita","GRADE_TO_TEN",true),
  Student.new("Andre","GRADE_TO_TEN",true),
  Student.new("Nikita","GRADE_TO_TEN",true),
  Student.new("Dmitro","GRADE_TO_TEN",true),
  Student.new("Sasha","GRADE_TO_TEN",true),
  Student.new("Dmitro","GRADE_TO_TEN",true),
  Student.new("Nikita","GRADE_TO_TEN",true),
  Student.new("Dmitro","GRADE_TO_TEN",true),
  Student.new("Andre","GRADE_TO_TEN",true),
  Student.new("Dmitro","GRADE_TO_TEN",true),
  Student.new("Nikita","GRADE_TO_TEN",true),
  Student.new("Andre","GRADE_TO_TEN",true),
  Student.new("Sasha","GRADE_TO_TEN",true)
]

teacher1 = Teacher.new("Sucker",students)

print(teacher1.goToTen.to_s  + "\n")
print(teacher1.countOfClasses)
