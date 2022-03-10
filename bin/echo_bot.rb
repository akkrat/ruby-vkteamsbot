require_relative '../lib/icqbot.rb'

ICQ::Bot.new('token') do |bot|
  bot.listen do |event|
    bot.send_msg "echo #{event.text}", event.chat_id
  end
end