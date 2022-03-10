require 'icqbot'

bot = ICQ::Bot.new('TOKEN')

bot.add_handler '/help', -> (event) do
  bot.send_msg 'command help don\'t work', event.chat_id
end

bot.add_handler '/disable', -> (event) do
  exit 0
end

bot.listen {}
