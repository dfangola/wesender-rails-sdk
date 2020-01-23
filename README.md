# WeSender SDK para Ruby on Rails

SDK para conexão com a API em Ruby

## Instalação 

Execute o comando:

```ruby
gem 'wesender'
```

Depois de executar o comando acima executa:

    $ bundle install

Ou instale usando o comando:

    $ gem install wesender
    
## Métodos diponiveis no momento
### - sendMessage

Certifique-se de configurar as variáveis de ambiente WESENDER_API_KEY:

```ruby
WESENDER_API_KEY='your_api_key' 
ou
WesenderSMS.new(api_key)

test = WesenderSMS.new

numbers: Array
message: String
hasSpecialCharacter: Boolean // opcional, por padrão é false

test.send(numbers, message, hasSpecialCharacter)
```

Resposta do método é a mesma que a da API:

```js
{
 "Exito" : Boolean ,
 "Mensagem" : String,
 "Objeto" :
   {
     // quantidade de mensagem que você pode enviar
     "SMS" : Number,
     "WhatsApp" : Number,
     "FacebookMesseger" : Number,
     "Integracoes" : Number,
   }
}
```

## Exemplo

```ruby
test.send(["913000111"], "Hello Angola")
```
## 🤔 Como contribuir

- Faça um fork desse repositório;
- Cria uma branch com a sua feature: `git checkout -b minha-feature`;
- Faça commit das suas alterações: `git commit -m 'feat: Minha nova feature'`;
- Faça push para a sua branch: `git push origin minha-feature`.

Depois que o merge da sua pull request for feito, você pode deletar a sua branch.

## :memo: Licença

Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE.md) para mais detalhes.

## Contribuidores

[Carlos Garcia](https://github.com/CarlCr)

## Autor

[JM Cabanga](https://github.com/cabanga).
