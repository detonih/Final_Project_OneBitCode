require_relative 'timer'

class Writer

  def initialize(sourceText, translatedText)
    @sourceText = sourceText
    @translatedText = translatedText
  end

  def write_to_file

    @timer = Timer.new().determine_time

    File.open("#{@timer}.txt", "w") { |f| f.write "Translated text: #{@translatedText} \nsource text: #{@sourceText}" }

  end

end