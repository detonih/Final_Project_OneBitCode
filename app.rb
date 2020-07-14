require_relative 'Text_Picker'
require_relative 'Translator'
require_relative 'Writer'

class App

  def initialize
    @text_picker = TextPicker.new()
    @translator = Translator.new(@text_picker).translate
    @writer = Writer.new(@text_picker.text_picker, @translator).write_to_file
  end

end

app = App.new()
