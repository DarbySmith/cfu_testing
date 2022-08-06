class Mermaid
  attr_reader :name, :age, :get_older

  def initialize(name, age, get_older)
    @name = name
    @age = age
    @get_older = get_older
  end

  def get_older()
    @age +=1
  end
end
