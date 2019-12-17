require "wesender/version"
require "httparty"

module Wesender
  include HTTParty

  base_uri "http://apiwesender.digitalfactory.co.ao"
  
  def initialize(api_key)
    @api_key = api_key
  end

  def self.sendSMS(numbers, message, optins = {})
    content = {}
    content[:headers] = {'Content-Type' => 'application/json'}
    content[:body] = {
      ApiKey: @api_key,
      Destino: numbers,
      Mensagem: message,
      CEspecial: false
    }
    
    puts content
    
    post("/envio/#{@api_key}", content)
  end


  #def self.set_base_url(is_test = false)
  #  self.base_uri is_test == true ? "http://apiwesender.digitalfactory.co.ao" : "https://app.wesender.co.ao"
  #end

end


#ApiKey: ,
#Destino: ,
#Mensagem: ,
#CEspecial: false