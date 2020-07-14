require_relative 'Text'
require_relative 'Translator'

print 'Enter the text to translate: '
text = gets.chomp

print 'Enter the idiom of the text (e.g. pt, en...): '
from = gets.chomp

print 'Enter the idiom which you want to translate to: '
to = gets.chomp

text = Text.new(text, from, to)

translator = Trasnlator.new(text)
puts translator.translate