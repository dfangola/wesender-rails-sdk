require "wesender/version"
require "httparty"

module Wesender
  include HTTParty

  def send(numbers, message, hasSpecialCharacter = false, options = {})
    @url = 'http://apiwesender-dev.digitalfactory.co.ao'

    response = HTTParty.post("#{@url}/envio/apikey", 
      :body => { 
        :ApiKey => @api_key, 
        :Destino => numbers, 
        :Mensagem => message, 
        :CEspecial => hasSpecialCharacter 
      }.to_json,
      :headers => { 'Content-Type' => 'application/json' } 
    )
    response.parsed_response
  end

end

class WesenderSMS
  include Wesender

  def initialize( api_key = nil )
    @api_key = api_key.nil? ? ENV["WESENDER_API_KEY"] : api_key
    super()
  end
end