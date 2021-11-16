class Speaker
  attr_reader :speaker

  def initialize(speaker)
    @speaker = speaker
    @phrases = []
  end

  def speak(person)
    phrase = "Hello, #{person}! My name is #{speaker}."
    save(phrase)
    puts phrase
  end

  private
  def save(phrase)
    @phrases << phrase
  end
end
