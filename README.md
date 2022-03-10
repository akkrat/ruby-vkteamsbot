
icq-bot-ruby :diamonds:
------------
Ruby wrapper for [ICQ Bot API](https://icq.com/botapi/)

----

## Installation 
```
gem install icqbot
```

## Usage
Simple echo bot:
```ruby
require 'icqbot'

ICQ::Bot.new('token') do |bot|
  bot.listen do |event|
    bot.send_msg("echo #{event.text}", event.chat_id)
  end
end
```
more examples in `bin/`

## Docs
* **[Documentation](./doc/overview.md)**

## Credits
* Thank you Cyril David (author by gem requests)
* And thank you Matz for wonderful Ruby