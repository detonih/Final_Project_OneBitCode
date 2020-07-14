class TextPicker

  attr_accessor :text_picker, :source_language, :target_language

  def initialize
    picker
  end
  
  def picker

  print 'Enter the text to translate: '
  @text_picker = gets.chomp

  print 'Enter the idiom of the text (e.g. pt, en...): '
  @source_language = gets.chomp

  print 'Enter the idiom which you want to translate to: '
  @target_language = gets.chomp

  return @text_picker, @source_language, @target_language

  end

end