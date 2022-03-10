require_relative '../lib/icqbot.rb'

times, max_time = 0, 5

ICQ::Bot.new('token') do |bot|
  bot.listen do |event|
    bot.send_msg("echo '#{event.text}'", event.chat_id)
    bot.loop = false if (times += 1) != max_time
  end
end