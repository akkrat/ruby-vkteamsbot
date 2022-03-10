require_relative '../lib/vkteamsbot.rb'

VKTeams::Bot.new('token') do |bot|
  bot.listen do |event|
    msg = VKTeams::Message.new(
      "echo #{event.text}", VKTeams::Button.new('google', url: 'google.com'))
    bot.send_msg msg, event.chat_id
  end
end