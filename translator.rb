require 'rest-client'

class Translator

  attr_reader :text, :source_language, :target_language, :url

  def initialize(text_picker)
    @text = text_picker.text_picker
    @source_language = text_picker.source_language
    @target_language = text_picker.target_language
    @url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=#{source_language}&tl=#{target_language}&dt=t&q=#{text}-"
  end
  
  def translate


    begin
      response = RestClient.get url

      regex = /(?<=")(.*?)([-"])/

      body = response.body

      regex.match(body)
   
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end

  end

end
