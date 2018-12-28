require 'pry'
class School


  def initialize(name)
    @name = name
    roster
  end

  def roster
    @roster ||= {}
  end

  def add_student(name, grade)
    @grade = grade
    @name = name

     if @roster.key?(@grade)

       @roster[@grade] << @name

    else
      @roster[@grade] = []
      @roster[@grade] << @name
    end
    roster

  end

  def grade(grade)
    @grade = grade
    @roster[@grade]
  end

  def sort
    temp = {}
     @roster.sort_by {|key, val| temp[key] = val }
    temp

    #   temp.each do |key, val|
    #     @final_sort = val.sort_by {|values, value| value}
    #   end
    # @final_sort
  end
end
