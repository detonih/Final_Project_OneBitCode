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

      regex = /(?<=")(.*?)([-"])/

      body = response.body

      regex.match(body)
   
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end

  end

end

# [[["I do not know-","sei la-",null,null,1]
# ]
# ,null,"pt",null,null,null,null,[]
# ]
