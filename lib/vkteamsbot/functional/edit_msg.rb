require_relative '../bot.rb'

module VKTeams

  class Bot
    def edit_msg msg, msg_id, chat_id
      params = create_message_params msg, chat_id
      params['msgId'] = msg_id
      JSON::load Requests.get(API.edit_text, params: params).body
    end
  end

end