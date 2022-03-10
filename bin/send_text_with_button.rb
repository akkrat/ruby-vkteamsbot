require_relative '../lib/icqbot.rb'

ICQ::Bot.new('token') do |bot|
  bot.listen do |event|
    msg = ICQ::Message.new(
      "echo #{event.text}", ICQ::Button.new('google', url: 'google.com'))
    bot.send_msg msg, event.chat_id
  end
end