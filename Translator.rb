require 'rest-client'

class Trasnlator

  def initialize(text)
    @text = text.text
    @source_language = text.source_language
    @target_language = text.target_language
  end
  
  def translate
    @url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=#{@source_language}&tl=#{@target_language}&dt=t&q=#{@text}-"
    
    begin
      response = RestClient.get @url

      body = response.body
      body_to_array = body.chars.to_a

      extract_characters = body_to_array.map! do |chars|
        if chars.between?(65.chr, 90.chr) or chars.between?(97.chr, 122.chr)
          chars 
        end
      end

      puts extract_characters
      # 65 - 90 maiuscula / 97 - 122 minuscula
   
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end

  end

end
