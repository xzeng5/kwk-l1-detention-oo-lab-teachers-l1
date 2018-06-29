#Code your detention class here
class Detention

  attr_accessor :location, :time, :grumpy_teacher

  def initialize
    @students = []
  end

  def activity
    "collective punishment"
  end


  def add_student(name)
    @students << name
  end

end
