class Text

  attr_accessor :text, :source_language, :target_language

  def initialize(text, source_language, target_language)
    @text = text
    @source_language = source_language
    @target_language = target_language
  end

end