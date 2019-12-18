
class Riddle
  attr_reader :name, :id, :question, :answer

  @@riddles = {}
  @@total_rows = 0

  def initialize(name, id, question, answer)
    @name = name
    @id = id || @@total_rows += 1
    @question = question
    @answer = answer
  end

  def self.all
    @@riddles.values()
  end

  def riddle
    @@riddles[self.id] = Riddle.new(self.name, self.id, self.question, self.answer)
  end

  def delete
    @@albums.delete(self.id)
  end

end
