#Code your detention class here
class Detention

  attr_accessor :location, :time, :grumpy_teacher

  def activity
    "collective punishment"
  end

  def students
    students = []
  end

  def add_student(name)
    students << name 
  end

end
