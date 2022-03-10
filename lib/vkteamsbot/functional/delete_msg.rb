require_relative '../bot.rb'

module VKTeams

  class Bot
    def delete_msg msg_id, chat_id
      # FIXME: fix this trash
      params = base_req chat_id
      r = "https://myteam.mail.ru/bot/v1/messages/deleteMessages?token=#{params[:token]}&chatId=#{chat_id}&msgId=#{msg_id}" # HACK: super trash
      JSON::load Requests.get(r).body
    end
  end

end