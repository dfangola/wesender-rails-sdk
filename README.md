# Wesender - RubyOnRails application integration library
589682376d834134b0be4b163a699ffb7d1d64d433544b35b9a53ce2b787413a
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wesender'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install wesender

## Setup and Usage
Make sure you setup the environment variables WESENDER_API_KEY:

```
WESENDER_API_KEY='your_api_key' our options = {api_key: your_api_key}

Wesender.sendSMS(numbers, message, hasSpecialCharacter)

numbers: Array
message: String
hasSpecialCharacter: Boolean // opcional, by default is false
```
```
Eg: Wesender.sendSMS(["913000111"], "Hello Angola")
```
## response
```
{
 "Exito" : Boolean ,
 "Mensagem" : String,
 "Objeto" :
   {
     // quantity of message that you can send
     "SMS" : Number,
     "WhatsApp" : Number,
     "FacebookMesseger" : Number,
     "Integracoes" : Number,
   }
}
```
## License
[MIT License](https://opensource.org/licenses/MIT).

## Author

[JM Cabanga](https://github.com/cabanga).
